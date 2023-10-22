package com.iMe.storage.data.network.model.request.wallet;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ActivateWalletRequest.kt */
/* loaded from: classes3.dex */
public final class ActivateWalletRequest {
    private String invitedBy;

    public ActivateWalletRequest() {
        this(null, 1, null);
    }

    public static /* synthetic */ ActivateWalletRequest copy$default(ActivateWalletRequest activateWalletRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = activateWalletRequest.invitedBy;
        }
        return activateWalletRequest.copy(str);
    }

    public final String component1() {
        return this.invitedBy;
    }

    public final ActivateWalletRequest copy(String invitedBy) {
        Intrinsics.checkNotNullParameter(invitedBy, "invitedBy");
        return new ActivateWalletRequest(invitedBy);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ActivateWalletRequest) && Intrinsics.areEqual(this.invitedBy, ((ActivateWalletRequest) obj).invitedBy);
    }

    public int hashCode() {
        return this.invitedBy.hashCode();
    }

    public String toString() {
        return "ActivateWalletRequest(invitedBy=" + this.invitedBy + ')';
    }

    public ActivateWalletRequest(String invitedBy) {
        Intrinsics.checkNotNullParameter(invitedBy, "invitedBy");
        this.invitedBy = invitedBy;
    }

    public /* synthetic */ ActivateWalletRequest(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str);
    }

    public final String getInvitedBy() {
        return this.invitedBy;
    }

    public final void setInvitedBy(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.invitedBy = str;
    }
}
