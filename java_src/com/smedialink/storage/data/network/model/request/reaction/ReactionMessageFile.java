package com.smedialink.storage.data.network.model.request.reaction;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: ReactionMessageFile.kt */
/* loaded from: classes3.dex */
public final class ReactionMessageFile {
    private String caption;
    private final String fileId;

    public static /* synthetic */ ReactionMessageFile copy$default(ReactionMessageFile reactionMessageFile, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = reactionMessageFile.fileId;
        }
        if ((i & 2) != 0) {
            str2 = reactionMessageFile.caption;
        }
        return reactionMessageFile.copy(str, str2);
    }

    public final String component1() {
        return this.fileId;
    }

    public final String component2() {
        return this.caption;
    }

    public final ReactionMessageFile copy(String fileId, String caption) {
        Intrinsics.checkNotNullParameter(fileId, "fileId");
        Intrinsics.checkNotNullParameter(caption, "caption");
        return new ReactionMessageFile(fileId, caption);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ReactionMessageFile) {
            ReactionMessageFile reactionMessageFile = (ReactionMessageFile) obj;
            return Intrinsics.areEqual(this.fileId, reactionMessageFile.fileId) && Intrinsics.areEqual(this.caption, reactionMessageFile.caption);
        }
        return false;
    }

    public int hashCode() {
        return (this.fileId.hashCode() * 31) + this.caption.hashCode();
    }

    public String toString() {
        return "ReactionMessageFile(fileId=" + this.fileId + ", caption=" + this.caption + ')';
    }

    public ReactionMessageFile(String fileId, String caption) {
        Intrinsics.checkNotNullParameter(fileId, "fileId");
        Intrinsics.checkNotNullParameter(caption, "caption");
        this.fileId = fileId;
        this.caption = caption;
    }

    public final String getCaption() {
        return this.caption;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final void setCaption(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.caption = str;
    }
}
