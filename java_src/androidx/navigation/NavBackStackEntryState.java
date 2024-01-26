package androidx.navigation;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.lifecycle.Lifecycle;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NavBackStackEntryState.kt */
/* loaded from: classes.dex */
public final class NavBackStackEntryState implements Parcelable {
    public static final Parcelable.Creator<NavBackStackEntryState> CREATOR;
    private final Bundle args;
    private final int destinationId;

    /* renamed from: id */
    private final String f49id;
    private final Bundle savedState;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getId() {
        return this.f49id;
    }

    public final int getDestinationId() {
        return this.destinationId;
    }

    public NavBackStackEntryState(NavBackStackEntry entry) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        this.f49id = entry.getId();
        this.destinationId = entry.getDestination().getId();
        this.args = entry.getArguments();
        Bundle bundle = new Bundle();
        this.savedState = bundle;
        entry.saveState(bundle);
    }

    public NavBackStackEntryState(Parcel inParcel) {
        Intrinsics.checkNotNullParameter(inParcel, "inParcel");
        String readString = inParcel.readString();
        Intrinsics.checkNotNull(readString);
        this.f49id = readString;
        this.destinationId = inParcel.readInt();
        this.args = inParcel.readBundle(NavBackStackEntryState.class.getClassLoader());
        Bundle readBundle = inParcel.readBundle(NavBackStackEntryState.class.getClassLoader());
        Intrinsics.checkNotNull(readBundle);
        this.savedState = readBundle;
    }

    public final NavBackStackEntry instantiate(Context context, NavDestination destination, Lifecycle.State hostLifecycleState, NavControllerViewModel navControllerViewModel) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(hostLifecycleState, "hostLifecycleState");
        Bundle bundle = this.args;
        if (bundle != null) {
            bundle.setClassLoader(context.getClassLoader());
        } else {
            bundle = null;
        }
        return NavBackStackEntry.Companion.create(context, destination, bundle, hostLifecycleState, navControllerViewModel, this.f49id, this.savedState);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeString(this.f49id);
        parcel.writeInt(this.destinationId);
        parcel.writeBundle(this.args);
        parcel.writeBundle(this.savedState);
    }

    /* compiled from: NavBackStackEntryState.kt */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        new Companion(null);
        CREATOR = new Parcelable.Creator<NavBackStackEntryState>() { // from class: androidx.navigation.NavBackStackEntryState$Companion$CREATOR$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public NavBackStackEntryState createFromParcel(Parcel inParcel) {
                Intrinsics.checkNotNullParameter(inParcel, "inParcel");
                return new NavBackStackEntryState(inParcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public NavBackStackEntryState[] newArray(int i) {
                return new NavBackStackEntryState[i];
            }
        };
    }
}
