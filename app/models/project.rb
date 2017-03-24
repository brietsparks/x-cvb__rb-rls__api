class Project
  include Neo4j::ActiveNode
  property :title, type: String
  property :summary, type: String
  property :created_at, type: DateTime
  property :updated_at, type: DateTime

  has_many :out, :subProjects, type: :HAS, model_class: :Project
  has_many :out, :parentProjects, type: :BELONGS_TO, model_class: :Project
end

