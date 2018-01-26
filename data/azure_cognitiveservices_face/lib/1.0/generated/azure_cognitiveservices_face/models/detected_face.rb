# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Detected Face object.
    #
    class DetectedFace

      include MsRestAzure

      # @return
      attr_accessor :face_id

      # @return [FaceRectangle]
      attr_accessor :face_rectangle

      # @return [FaceLandmarks]
      attr_accessor :face_landmarks

      # @return [FaceAttributes]
      attr_accessor :face_attributes


      #
      # Mapper for DetectedFace class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DetectedFace',
          type: {
            name: 'Composite',
            class_name: 'DetectedFace',
            model_properties: {
              face_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'faceId',
                type: {
                  name: 'String'
                }
              },
              face_rectangle: {
                client_side_validation: true,
                required: true,
                serialized_name: 'faceRectangle',
                type: {
                  name: 'Composite',
                  class_name: 'FaceRectangle'
                }
              },
              face_landmarks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'faceLandmarks',
                type: {
                  name: 'Composite',
                  class_name: 'FaceLandmarks'
                }
              },
              face_attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'faceAttributes',
                type: {
                  name: 'Composite',
                  class_name: 'FaceAttributes'
                }
              }
            }
          }
        }
      end
    end
  end
end