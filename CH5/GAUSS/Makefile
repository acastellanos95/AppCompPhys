CXXFLAGS=$(shell pkg-config --cflags --libs QatGenericFunctions)  -std=c++11


gauss:gauss.cpp
	$(CXX) $< $(CXXFLAGS) -o $@
clean:
	rm -f gauss *~ 
