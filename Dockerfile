FROM ferrarodav/scientific:latest

LABEL maintainer="Davide Ferraro <ferraro.dav@gmail.com>" \
    name="Experiment with DL" \
    description="Docker container to run experiments with tensorflow and pytorch." \
    version="0.2"

ENV PIP_PACKAGES_FRAMEWORKS="\
    tensorflow \
    keras \
    torch_nightly -f https://download.pytorch.org/whl/nightly/cpu/torch_nightly.html \
    torchvision \
    torchtext \
    fastai"
RUN pip install --no-cache-dir -U ${PIP_PACKAGES_FRAMEWORKS}

ENV PIP_PACKAGES_OTHERS="\
    augmentor \
    pytorch-ignite \
    tensorboardX \
    jupyter-tensorboard"
RUN pip install --no-cache-dir -U ${PIP_PACKAGES_OTHERS}
