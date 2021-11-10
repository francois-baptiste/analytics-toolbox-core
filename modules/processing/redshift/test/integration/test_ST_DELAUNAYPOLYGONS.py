from test_utils import run_query, redshift_connector
import pytest


def test_delaunay_poly_success():
    fixture_file = open('./test/integration/delaunay_fixtures/in/wkts.txt', 'r')
    points = fixture_file.readlines()
    fixture_file.close()

    results = run_query(
        f"""SELECT @@RS_PREFIX@@processing.ST_DELAUNAYPOLYGONS(
            ST_GeomFromText('{points[0].rstrip()}')),
        @@RS_PREFIX@@processing.ST_DELAUNAYPOLYGONS(
            ST_GeomFromText('{points[1].rstrip()}'))"""
    )

    fixture_file = open(
        './test/integration/delaunay_fixtures/out/geojsons_poly.txt', 'r'
    )
    lines = fixture_file.readlines()
    fixture_file.close()

    for idx, result in enumerate(results):
        assert str(result[0]) == lines[idx].rstrip()


def test_delaunay_poly_none():
    results = run_query(
        """SELECT @@RS_PREFIX@@processing.ST_DELAUNAYPOLYGONS(
            ST_GeomFromText(Null))"""
    )

    assert results[0][0] is None


def test_delaunay_poly_wrong_geom_type():
    fixture_file = open('./test/integration/delaunay_fixtures/in/wkts.txt', 'r')
    points = fixture_file.readlines()
    fixture_file.close()

    with pytest.raises(redshift_connector.error.ProgrammingError) as excinfo:
        run_query(
            f"""SELECT @@RS_PREFIX@@processing.ST_DELAUNAYPOLYGONS(
                ST_GeomFromText('{points[3].rstrip()}'))"""
        )

    assert 'Input points parameter must be MultiPoint' in str(excinfo.value)


def test_delaunay_poly_geom_too_long():
    fixture_file = open('./test/integration/delaunay_fixtures/in/wkts.txt', 'r')
    points = fixture_file.readlines()
    fixture_file.close()

    with pytest.raises(redshift_connector.error.ProgrammingError) as excinfo:
        run_query(
            f"""SELECT @@RS_PREFIX@@processing.ST_DELAUNAYPOLYGONS(
                ST_GeomFromText('{points[2].rstrip()}'))"""
        )

    assert 'Value too long for character type' in str(excinfo.value)