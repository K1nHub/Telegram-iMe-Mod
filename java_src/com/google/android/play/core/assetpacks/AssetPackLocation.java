package com.google.android.play.core.assetpacks;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public abstract class AssetPackLocation {
    static {
        new zzbm(1, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AssetPackLocation zzb(String str, String str2) {
        return new zzbm(0, str, str2);
    }

    public abstract String assetsPath();

    public abstract int packStorageMethod();

    public abstract String path();
}
