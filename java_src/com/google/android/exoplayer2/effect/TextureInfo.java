package com.google.android.exoplayer2.effect;
/* loaded from: classes.dex */
public final class TextureInfo {
    public static final TextureInfo UNSET = new TextureInfo(-1, -1, -1, -1);
    public final int fboId;
    public final int height;
    public final int texId;
    public final int width;

    public TextureInfo(int i, int i2, int i3, int i4) {
        this.texId = i;
        this.fboId = i2;
        this.width = i3;
        this.height = i4;
    }
}
