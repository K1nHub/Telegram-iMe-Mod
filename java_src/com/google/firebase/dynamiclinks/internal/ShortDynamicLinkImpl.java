package com.google.firebase.dynamiclinks.internal;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;
@SafeParcelable.Class(creator = "ShortDynamicLinkImplCreator")
/* loaded from: classes3.dex */
public final class ShortDynamicLinkImpl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ShortDynamicLinkImpl> CREATOR = new ShortDynamicLinkImplCreator();
    @SafeParcelable.Field(getter = "getPreviewLink", m779id = 2)
    private final Uri previewLink;
    @SafeParcelable.Field(getter = "getShortLink", m779id = 1)
    private final Uri shortLink;
    @SafeParcelable.Field(getter = "getWarnings", m779id = 3)
    private final List<WarningImpl> warnings;

    @SafeParcelable.Constructor
    public ShortDynamicLinkImpl(@SafeParcelable.Param(m778id = 1) Uri uri, @SafeParcelable.Param(m778id = 2) Uri uri2, @SafeParcelable.Param(m778id = 3) List<WarningImpl> list) {
        this.shortLink = uri;
        this.previewLink = uri2;
        this.warnings = list == null ? new ArrayList<>() : list;
    }

    public Uri getShortLink() {
        return this.shortLink;
    }

    public Uri getPreviewLink() {
        return this.previewLink;
    }

    public List<WarningImpl> getWarnings() {
        return this.warnings;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ShortDynamicLinkImplCreator.writeToParcel(this, parcel, i);
    }

    @SafeParcelable.Class(creator = "WarningImplCreator")
    /* loaded from: classes3.dex */
    public static class WarningImpl extends AbstractSafeParcelable {
        public static final Parcelable.Creator<WarningImpl> CREATOR = new WarningImplCreator();
        @SafeParcelable.Field(getter = "getMessage", m779id = 2)
        @SafeParcelable.Reserved({1})
        private final String message;

        @SafeParcelable.Constructor
        public WarningImpl(@SafeParcelable.Param(m778id = 2) String str) {
            this.message = str;
        }

        public String getMessage() {
            return this.message;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            WarningImplCreator.writeToParcel(this, parcel, i);
        }
    }
}
