// Inserire qui il C equivalente
int min(int x, int y, int z) {
    if (x - y >= 0) goto L;
    if(x - z >= 0) goto R;
    return x;

    L: if (y - z >= 0) goto R;
    return y;
    R: return z;
}