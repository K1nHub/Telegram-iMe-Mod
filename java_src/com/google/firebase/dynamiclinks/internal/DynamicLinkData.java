package com.google.firebase.dynamiclinks.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "DynamicLinkDataCreator")
/* loaded from: classes3.dex */
public class DynamicLinkData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DynamicLinkData> CREATOR = new DynamicLinkDataCreator();
    @SafeParcelable.Field(getter = "getClickTimestamp", m789id = 4)
    private long clickTimestamp;
    @SafeParcelable.Field(getter = "getDeepLink", m789id = 2)
    private String deepLink;
    @SafeParcelable.Field(getter = "getDynamicLink", m789id = 1)
    private String dynamicLink;
    @SafeParcelable.Field(getter = "getExtensionBundle", m789id = 5)
    private Bundle extensionBundle;
    @SafeParcelable.Field(getter = "getMinVersion", m789id = 3)
    private int minVersion;
    @SafeParcelable.Field(getter = "getRedirectUrl", m789id = 6)
    private Uri redirectUrl;

    public String getDynamicLink() {
        return this.dynamicLink;
    }

    public String getDeepLink() {
        return this.deepLink;
    }

    public int getMinVersion() {
        return this.minVersion;
    }

    public long getClickTimestamp() {
        return this.clickTimestamp;
    }

    public void setClickTimestamp(long j) {
        this.clickTimestamp = j;
    }

    public Bundle getExtensionBundle() {
        Bundle bundle = this.extensionBundle;
        return bundle == null ? new Bundle() : bundle;
    }

    public Uri getRedirectUrl() {
        return this.redirectUrl;
    }

    @SafeParcelable.Constructor
    public DynamicLinkData(@SafeParcelable.Param(m788id = 1) String str, @SafeParcelable.Param(m788id = 2) String str2, @SafeParcelable.Param(m788id = 3) int i, @SafeParcelable.Param(m788id = 4) long j, @SafeParcelable.Param(m788id = 5) Bundle bundle, @SafeParcelable.Param(m788id = 6) Uri uri) {
        this.clickTimestamp = 0L;
        this.extensionBundle = null;
        this.dynamicLink = str;
        this.deepLink = str2;
        this.minVersion = i;
        this.clickTimestamp = j;
        this.extensionBundle = bundle;
        this.redirectUrl = uri;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        DynamicLinkDataCreator.writeToParcel(this, parcel, i);
    }
}
