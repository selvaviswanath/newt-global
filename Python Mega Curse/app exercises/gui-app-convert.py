import PySimpleGUI as sg

label = sg.Text("Enter feet: ")
input = sg.Input()

inches_label = sg.Text("Enter inches: ")
inches_input = sg.Input()

button = sg.Button("Convert")

window = sg.Window("Convertor",
                   layout=[[label, input],
                           [inches_label, inches_input],
                           [button]])

window.read()
window.close()