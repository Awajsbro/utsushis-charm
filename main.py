from mp4_masking import create_masks
from mp4_decompress import extract_unique_frames



if __name__ == "__main__":

    input_dir = "inputs"
    masked_dir = "masked"
    frame_dir = "unique_frames"

    create_masks(input_dir, masked_dir)
    extract_unique_frames(masked_dir, frame_dir)