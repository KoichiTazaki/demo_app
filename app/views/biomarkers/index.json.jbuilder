json.array!(@biomarkers) do |biomarker|
  json.extract! biomarker, :marker, :matrix, :purpose, :decision, :evidence_level, :analyte_type, :clinical_relevance, :project_id
  json.url biomarker_url(biomarker, format: :json)
end