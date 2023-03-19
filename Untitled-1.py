def add_length(str_):
    final = []
    nstring = str_.split(' ')
    for string in nstring:
        final.append(f"{string} {len(string)}")
    return final