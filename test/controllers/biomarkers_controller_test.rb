require 'test_helper'

class BiomarkersControllerTest < ActionController::TestCase
  setup do
    @biomarker = biomarkers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biomarkers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biomarker" do
    assert_difference('Biomarker.count') do
      post :create, biomarker: { analyte_type: @biomarker.analyte_type, clinical_relevance: @biomarker.clinical_relevance, decision: @biomarker.decision, evidence_level: @biomarker.evidence_level, marker: @biomarker.marker, matrix: @biomarker.matrix, project_id: @biomarker.project_id, purpose: @biomarker.purpose }
    end

    assert_redirected_to biomarker_path(assigns(:biomarker))
  end

  test "should show biomarker" do
    get :show, id: @biomarker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @biomarker
    assert_response :success
  end

  test "should update biomarker" do
    patch :update, id: @biomarker, biomarker: { analyte_type: @biomarker.analyte_type, clinical_relevance: @biomarker.clinical_relevance, decision: @biomarker.decision, evidence_level: @biomarker.evidence_level, marker: @biomarker.marker, matrix: @biomarker.matrix, project_id: @biomarker.project_id, purpose: @biomarker.purpose }
    assert_redirected_to biomarker_path(assigns(:biomarker))
  end

  test "should destroy biomarker" do
    assert_difference('Biomarker.count', -1) do
      delete :destroy, id: @biomarker
    end

    assert_redirected_to biomarkers_path
  end
end
