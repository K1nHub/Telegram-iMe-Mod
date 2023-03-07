package com.google.android.exoplayer2.effect;

import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLUtils;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.FrameProcessingException;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.util.Util;
/* loaded from: classes.dex */
public class SingleColorLut implements ColorLut {
    private final Bitmap lut;
    private int lutTextureId = -1;

    public static SingleColorLut createFromCube(int[][][] iArr) {
        Assertions.checkArgument(iArr.length > 0 && iArr[0].length > 0 && iArr[0][0].length > 0, "LUT must have three dimensions.");
        Assertions.checkArgument(iArr.length == iArr[0].length && iArr.length == iArr[0][0].length, Util.formatInvariant("All three dimensions of a LUT must match, received %d x %d x %d.", Integer.valueOf(iArr.length), Integer.valueOf(iArr[0].length), Integer.valueOf(iArr[0][0].length)));
        return new SingleColorLut(transformCubeIntoBitmap(iArr));
    }

    public static SingleColorLut createFromBitmap(Bitmap bitmap) {
        Assertions.checkArgument(bitmap.getWidth() * bitmap.getWidth() == bitmap.getHeight(), Util.formatInvariant("LUT needs to be in a N x N^2 format, received %d x %d.", Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight())));
        Assertions.checkArgument(bitmap.getConfig() == Bitmap.Config.ARGB_8888, "Color representation needs to be ARGB_8888.");
        return new SingleColorLut(bitmap);
    }

    private SingleColorLut(Bitmap bitmap) {
        this.lut = bitmap;
    }

    private static Bitmap transformCubeIntoBitmap(int[][][] iArr) {
        int length = iArr.length;
        int i = length * length;
        int[] iArr2 = new int[i * length];
        for (int i2 = 0; i2 < length; i2++) {
            for (int i3 = 0; i3 < length; i3++) {
                for (int i4 = 0; i4 < length; i4++) {
                    iArr2[(((length * i2) + i3) * length) + i4] = iArr[i2][i3][i4];
                }
            }
        }
        return Bitmap.createBitmap(iArr2, length, i, Bitmap.Config.ARGB_8888);
    }

    @Override // com.google.android.exoplayer2.effect.ColorLut
    public int getLutTextureId(long j) {
        Assertions.checkState(this.lutTextureId != -1, "The LUT has not been stored as a texture in OpenGL yet. You must to call #toGlTextureProcessor() first.");
        return this.lutTextureId;
    }

    @Override // com.google.android.exoplayer2.effect.ColorLut
    public int getLength(long j) {
        return this.lut.getWidth();
    }

    @Override // com.google.android.exoplayer2.effect.ColorLut
    public void release() throws GlUtil.GlException {
        GlUtil.deleteTexture(this.lutTextureId);
    }

    @Override // com.google.android.exoplayer2.effect.ColorLut, com.google.android.exoplayer2.effect.GlEffect
    public SingleFrameGlTextureProcessor toGlTextureProcessor(Context context, boolean z) throws FrameProcessingException {
        Assertions.checkState(!z, "HDR is currently not supported.");
        try {
            this.lutTextureId = storeLutAsTexture(this.lut);
            return new ColorLutProcessor(context, this, z);
        } catch (GlUtil.GlException e) {
            throw new FrameProcessingException("Could not store the LUT as a texture.", e);
        }
    }

    private static int storeLutAsTexture(Bitmap bitmap) throws GlUtil.GlException {
        int createTexture = GlUtil.createTexture(bitmap.getWidth(), bitmap.getHeight(), false);
        GLUtils.texImage2D(3553, 0, bitmap, 0);
        GlUtil.checkGlError();
        return createTexture;
    }
}
