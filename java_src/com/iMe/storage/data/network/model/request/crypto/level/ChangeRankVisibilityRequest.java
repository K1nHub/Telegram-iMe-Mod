package com.iMe.storage.data.network.model.request.crypto.level;
/* compiled from: ChangeRankVisibilityRequest.kt */
/* loaded from: classes4.dex */
public final class ChangeRankVisibilityRequest {
    private final boolean visible;

    public static /* synthetic */ ChangeRankVisibilityRequest copy$default(ChangeRankVisibilityRequest changeRankVisibilityRequest, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = changeRankVisibilityRequest.visible;
        }
        return changeRankVisibilityRequest.copy(z);
    }

    public final boolean component1() {
        return this.visible;
    }

    public final ChangeRankVisibilityRequest copy(boolean z) {
        return new ChangeRankVisibilityRequest(z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChangeRankVisibilityRequest) && this.visible == ((ChangeRankVisibilityRequest) obj).visible;
    }

    public int hashCode() {
        boolean z = this.visible;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    public String toString() {
        return "ChangeRankVisibilityRequest(visible=" + this.visible + ')';
    }

    public ChangeRankVisibilityRequest(boolean z) {
        this.visible = z;
    }

    public final boolean getVisible() {
        return this.visible;
    }
}
