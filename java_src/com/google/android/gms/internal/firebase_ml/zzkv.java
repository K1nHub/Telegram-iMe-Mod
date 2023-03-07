package com.google.android.gms.internal.firebase_ml;

import java.util.Objects;
import org.checkerframework.checker.nullness.compatqual.NonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
public final class zzkv {
    public static void checkArgument(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void checkArgument(boolean z, @NullableDecl Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void zza(boolean z, @NullableDecl String str, @NullableDecl Object obj, @NullableDecl Object obj2, @NullableDecl Object obj3, @NullableDecl Object obj4) {
        if (!z) {
            throw new IllegalArgumentException(zzld.zzb(str, obj, obj2, obj3, obj4));
        }
    }

    public static void checkState(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    @NonNullDecl
    public static <T> T checkNotNull(@NonNullDecl T t) {
        Objects.requireNonNull(t);
        return t;
    }

    @NonNullDecl
    public static <T> T checkNotNull(@NonNullDecl T t, @NullableDecl Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static int zzc(int i, int i2) {
        String zzb;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                zzb = zzld.zzb("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else if (i2 < 0) {
                StringBuilder sb = new StringBuilder(26);
                sb.append("negative size: ");
                sb.append(i2);
                throw new IllegalArgumentException(sb.toString());
            } else {
                zzb = zzld.zzb("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(zzb);
        }
        return i;
    }

    public static int zzd(int i, int i2) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(zzb(i, i2, "index"));
        }
        return i;
    }

    public static int zza(int i, int i2, @NullableDecl String str) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(zzb(i, i2, str));
        }
        return i;
    }

    private static String zzb(int i, int i2, @NullableDecl String str) {
        if (i < 0) {
            return zzld.zzb("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzld.zzb("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    public static void zza(int i, int i2, int i3) {
        String zzb;
        if (i < 0 || i2 < i || i2 > i3) {
            if (i < 0 || i > i3) {
                zzb = zzb(i, i3, "start index");
            } else {
                zzb = (i2 < 0 || i2 > i3) ? zzb(i2, i3, "end index") : zzld.zzb("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            }
            throw new IndexOutOfBoundsException(zzb);
        }
    }
}
