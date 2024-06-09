BUILD_DIR = build

build:
	@echo "Building $(BUILD_DIR)..."
	mkdir -p $(BUILD_DIR)
	cd $(BUILD_DIR) && cmake ..
	cd $(BUILD_DIR) && make

clean:
	@echo "Cleaning $(BUILD_DIR)..."
	rm -rf $(BUILD_DIR)

.PHONY: build clean
