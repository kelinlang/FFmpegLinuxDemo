#FFmpegTransCode:
#	gcc -o FFmpegTransCode main.c VideoTransCode.c  -lpthread
#
#clean:
#	rm main VideoTransCode

# ָ���������ѡ��
CC=gcc
CFLAGS=-Wall #-std=gnu99
 
# Ŀ���ļ�
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
