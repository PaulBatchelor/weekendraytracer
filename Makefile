OBJ = main.o

%.o: %.cpp
	$(CXX) -c $< -o $@

weekend: $(OBJ)
	$(CXX) $(OBJ) -o $@

clean:
	rm -rf $(OBJ) weekend
