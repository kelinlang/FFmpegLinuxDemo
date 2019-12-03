#FFmpegTransCode:
#	gcc -o FFmpegTransCode main.c VideoTransCode.c  -lpthread
#
#clean:
#	rm main VideoTransCode

# 指令编译器和选项
CC=gcc
CFLAGS=-Wall #-std=gnu99
 
# 目标文件
TARGET=FFmpegTransCode
SRCS = main.c \
  VideoTransCode.c
 
INC = -I./include
 
OBJS = $(SRCS:.c=.o)
 
$(TARGET):$(OBJS)
#	@echo TARGET:$@
#	@echo OBJECTS:$^
	$(CC) -o $@ $^
 
clean:
	rm -rf $(TARGET) $(OBJS)
 
%.o:%.c
	$(CC) $(CFLAGS) $(INC) -o $@ -c $<
