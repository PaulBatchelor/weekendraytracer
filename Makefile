.PHONY: render

CFLAGS = -g 

OBJ = main.o

%.o: %.cpp
	$(CXX) $(CFLAGS) -c $< -o $@

default: weekend

weekend: $(OBJ)
	$(CXX) $(OBJ) -o $@

render: weekend
	./weekend > out.ppm
	convert out.ppm out.png
	rm out.ppm
	feh out.png

clean:
	rm -rf $(OBJ) weekend out.png
