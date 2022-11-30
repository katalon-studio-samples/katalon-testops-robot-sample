from testops_commons.uploader import VisualTestingUploader


class CustomLib(object):

    def __init__(self):
        self.__uploader = VisualTestingUploader()

    def verify_checkpoint(self, checkpoint):
        self.__uploader.verify_checkpoint(checkpoint)

