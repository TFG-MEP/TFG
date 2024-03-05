from .strategy import Strategy
from ..writing_utils import *

class PrincipledBSDFNode(Strategy):
    def write_node(self, node, node_properties, shader_content):
        
        node_name = node.name.replace(" ", "")
        node_name=node.name.replace(".", "")

        node_properties.insert(0, 'i')
        
        for link in node.outputs["BSDF"].links :

            input_node = link.to_node
            input_property = link.to_socket

            shader_content = write_node("HLSLTemplates/BSDF/principled_bsdf.txt", node_properties, input_node , input_property, shader_content)
        
        print(f'node.inputs["Alpha"].default_value: {node.inputs["Alpha"].default_value}')
        
        if node.inputs['Alpha'].default_value < 1:
            shader_content=write_tags("HLSLTemplates/BSDF/principled_bsdf_tags.txt", shader_content)
        
        return shader_content