class ProjectSerializer 

    def initialize(project)
        @project_collection = project
    end

    def to_serialized_json
        options = {
          include: {
            comments: {}
          },
          except: [:created_at, :updated_at]
        }

        @project_collection.to_json(options)
    end
end