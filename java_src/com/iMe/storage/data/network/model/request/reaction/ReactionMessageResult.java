package com.iMe.storage.data.network.model.request.reaction;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ReactionMessageResult.kt */
/* loaded from: classes3.dex */
public final class ReactionMessageResult {
    @SerializedName("likeMessageId")

    /* renamed from: id */
    private final String f297id;

    public static /* synthetic */ ReactionMessageResult copy$default(ReactionMessageResult reactionMessageResult, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = reactionMessageResult.f297id;
        }
        return reactionMessageResult.copy(str);
    }

    public final String component1() {
        return this.f297id;
    }

    public final ReactionMessageResult copy(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new ReactionMessageResult(id);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ReactionMessageResult) && Intrinsics.areEqual(this.f297id, ((ReactionMessageResult) obj).f297id);
    }

    public int hashCode() {
        return this.f297id.hashCode();
    }

    public String toString() {
        return "ReactionMessageResult(id=" + this.f297id + ')';
    }

    public ReactionMessageResult(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.f297id = id;
    }

    public final String getId() {
        return this.f297id;
    }
}
