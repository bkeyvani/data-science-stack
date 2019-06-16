# vim:set ft=dockerfile:
FROM python:3.7
WORKDIR /code
COPY ./code/requirements.txt .
COPY ./code/docker_ds_nb.ipynb .
RUN pip --no-cache-dir install -r requirements.txt
EXPOSE 8888
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
