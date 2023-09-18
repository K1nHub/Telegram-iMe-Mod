package com.iMe.feature.navigation;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NavigationBundle.kt */
/* loaded from: classes4.dex */
public final class NavigationBundle<T extends Parcelable> implements Parcelable {
    public static final Parcelable.Creator<NavigationBundle<?>> CREATOR;
    private final T data;
    private final NavDirection navDirection;

    /* compiled from: NavigationBundle.kt */
    /* loaded from: classes4.dex */
    public static final class Creator implements Parcelable.Creator<NavigationBundle<?>> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final NavigationBundle<?> createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new NavigationBundle<>(parcel.readParcelable(NavigationBundle.class.getClassLoader()), NavDirection.valueOf(parcel.readString()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final NavigationBundle<?>[] newArray(int i) {
            return new NavigationBundle[i];
        }
    }

    static {
        new Companion(null);
        CREATOR = new Creator();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NavigationBundle) {
            NavigationBundle navigationBundle = (NavigationBundle) obj;
            return Intrinsics.areEqual(this.data, navigationBundle.data) && this.navDirection == navigationBundle.navDirection;
        }
        return false;
    }

    public int hashCode() {
        return (this.data.hashCode() * 31) + this.navDirection.hashCode();
    }

    public String toString() {
        return "NavigationBundle(data=" + this.data + ", navDirection=" + this.navDirection + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int i) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeParcelable(this.data, i);
        out.writeString(this.navDirection.name());
    }

    public NavigationBundle(T data, NavDirection navDirection) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(navDirection, "navDirection");
        this.data = data;
        this.navDirection = navDirection;
    }

    public final T getData() {
        return this.data;
    }

    public final NavDirection getNavDirection() {
        return this.navDirection;
    }

    /* compiled from: NavigationBundle.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
