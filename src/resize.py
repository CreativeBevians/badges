import xml.etree.ElementTree as XML
import argparse

# All this to get rid of the pt suffix in the svg dimensions.

parser = argparse.ArgumentParser("svg_resizer")
parser.add_argument("source", help="source file", type=str)
parser.add_argument("destination", help="destination file", type=str)
args = parser.parse_args()

def un_pt(s: str):
    if s[-2:] == "pt":
        return s[:-2]
    else:
        return s

file = XML.parse(args.source)
root = file.getroot()
width = root.attrib.get("width", 10)
height = root.attrib.get("height", 20)
root.attrib["width"] = un_pt(width)
root.attrib["height"] = un_pt(height)
XML.register_namespace("", "http://www.w3.org/2000/svg")
f = open(args.destination, "w")
f.write(XML.tostring(root).decode("utf-8"))