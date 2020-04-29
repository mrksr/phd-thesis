import numpy as np


def to_text(path, arrays, titles):
    """Export arrays to pgfplots textfile.

    Assumes arrays with a shapes of exactly one entry which is not 1.
    """
    arrays = [np.squeeze(array)[..., None] for array in arrays]
    np.savetxt(
        path, np.concatenate(arrays, axis=-1), header=" ".join(titles),
    )
