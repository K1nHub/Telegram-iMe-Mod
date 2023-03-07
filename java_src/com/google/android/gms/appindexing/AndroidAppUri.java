package com.google.android.gms.appindexing;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.List;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
@VisibleForTesting
@Deprecated
/* loaded from: classes.dex */
public final class AndroidAppUri {
    private final Uri zza;

    private AndroidAppUri(Uri uri) {
        this.zza = uri;
    }

    @VisibleForTesting
    @Deprecated
    public static AndroidAppUri newAndroidAppUri(Uri uri) {
        AndroidAppUri androidAppUri = new AndroidAppUri(uri);
        if (!"android-app".equals(androidAppUri.zza.getScheme())) {
            throw new IllegalArgumentException("android-app scheme is required.");
        }
        if (TextUtils.isEmpty(androidAppUri.getPackageName())) {
            throw new IllegalArgumentException("Package name is empty.");
        }
        if (androidAppUri.zza.equals(newAndroidAppUri(androidAppUri.getPackageName(), androidAppUri.getDeepLinkUri()).toUri())) {
            return androidAppUri;
        }
        throw new IllegalArgumentException("URI is not canonical.");
    }

    public boolean equals(Object obj) {
        if (obj instanceof AndroidAppUri) {
            return this.zza.equals(((AndroidAppUri) obj).zza);
        }
        return false;
    }

    @VisibleForTesting
    public Uri getDeepLinkUri() {
        List<String> pathSegments = this.zza.getPathSegments();
        if (pathSegments.size() > 0) {
            Uri.Builder builder = new Uri.Builder();
            builder.scheme(pathSegments.get(0));
            if (pathSegments.size() > 1) {
                builder.authority(pathSegments.get(1));
                for (int i = 2; i < pathSegments.size(); i++) {
                    builder.appendPath(pathSegments.get(i));
                }
            }
            builder.encodedQuery(this.zza.getEncodedQuery());
            builder.encodedFragment(this.zza.getEncodedFragment());
            return builder.build();
        }
        return null;
    }

    @VisibleForTesting
    public String getPackageName() {
        return this.zza.getAuthority();
    }

    public int hashCode() {
        return Objects.hashCode(this.zza);
    }

    public String toString() {
        return this.zza.toString();
    }

    @VisibleForTesting
    public Uri toUri() {
        return this.zza;
    }

    @VisibleForTesting
    @Deprecated
    public static AndroidAppUri newAndroidAppUri(String str, Uri uri) {
        Uri.Builder authority = new Uri.Builder().scheme("android-app").authority(str);
        if (uri != null) {
            String scheme = uri.getScheme();
            if (scheme != null) {
                authority.appendPath(scheme);
            }
            String authority2 = uri.getAuthority();
            if (authority2 != null) {
                authority.appendPath(authority2);
            }
            for (String str2 : uri.getPathSegments()) {
                authority.appendPath(str2);
            }
            authority.encodedQuery(uri.getEncodedQuery()).encodedFragment(uri.getEncodedFragment());
        }
        return new AndroidAppUri(authority.build());
    }
}
