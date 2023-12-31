package com.iMe.storage.data.network.model.request.reaction;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ReactionMessageResult.kt */
/* loaded from: classes3.dex */
public final class ReactionMessageResult {
    @SerializedName("likeMessageId")

    /* renamed from: id */
    private final String f312id;

    public static /* synthetic */ ReactionMessageResult copy$default(ReactionMessageResult reactionMessageResult, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = reactionMessageResult.f312id;
        }
        return reactionMessageResult.copy(str);
    }

    public final String component1() {
        return this.f312id;
    }

    public final ReactionMessageResult copy(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new ReactionMessageResult(id);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ReactionMessageResult) && Intrinsics.areEqual(this.f312id, ((ReactionMessageResult) obj).f312id);
    }

    public int hashCode() {
        return this.f312id.hashCode();
    }

    public String toString() {
        return "ReactionMessageResult(id=" + this.f312id + ')';
    }

    public ReactionMessageResult(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.f312id = id;
    }

    public final String getId() {
        return this.f312id;
    }
}
