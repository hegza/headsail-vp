import math

NAME = "DLA"
MEM_SIZE = 0x0068

class DLA:
    def __init__(self):
        self.mem = [0xFF] * MEM_SIZE # Memory initalizaed
        self.name = "DLA"

    # Perform conv2d to value written
    def conv2d():
        return

    # Perform matrix multiplication for written matrices
    def matmul():
        return 

#    Logic    #
# ----------- #
#     API     #

def write(request, dla):
    self.NoisyLog("Writing request: %s at 0x%x, value 0x%x" % (str(request.type), request.offset, request.value))
    dla.mem[request.offset] = request.value

def read(request, dla):
    self.NoisyLog("Reading request: %s at 0x%x, value 0x%x" % (str(request.type), request.offset, request.value))
    request.value = dla.mem[request.offset]

if request.isInit:
    dla = DLA()
    self.NoisyLog("%s initialized" % NAME)
elif request.isRead:
    read(request, dla)
elif request.isWrite: 
    write(request, dla)
else:
    self.NoisyLog("Bad request: %s at 0x%x, value 0x%x" % (str(request.type), request.offset, request.value))
