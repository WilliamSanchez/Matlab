classdef video_writer < handle
    properties
        video
        output_rate
        time_of_last_frame
    end
    methods
        function self = video_writer()
            self.video = VideoWriter(video_name,"Motion JPEG AVI");
            self.video.Quality = 95;
            open(self.video);
            self.output_rate = output_rate;
            self.time_of_last_frame = 0;
        end
        function self = update(self, time)
            frame = getframe(gcf);
            writeVideo(self.video,frame);
            self.time_of_last_frame = time;
        end
        function self = close(self)
            close(self.video);
        end
    end
end