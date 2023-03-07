package com.smedialink.storage.data.network.model.request.reaction;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ReactionRequestData.kt */
/* loaded from: classes3.dex */
public final class ReactionRequestData {
    private final List<UrlButton> buttons;
    @SerializedName("columns_number")
    private final int columnsNumber;
    private final ReactionMessageFile file;
    private final List<String> reactions;
    private final String text;
    private final ReactionMessageTypes type;

    public static /* synthetic */ ReactionRequestData copy$default(ReactionRequestData reactionRequestData, ReactionMessageTypes reactionMessageTypes, ReactionMessageFile reactionMessageFile, String str, List list, List list2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            reactionMessageTypes = reactionRequestData.type;
        }
        if ((i2 & 2) != 0) {
            reactionMessageFile = reactionRequestData.file;
        }
        ReactionMessageFile reactionMessageFile2 = reactionMessageFile;
        if ((i2 & 4) != 0) {
            str = reactionRequestData.text;
        }
        String str2 = str;
        List<String> list3 = list;
        if ((i2 & 8) != 0) {
            list3 = reactionRequestData.reactions;
        }
        List list4 = list3;
        List<UrlButton> list5 = list2;
        if ((i2 & 16) != 0) {
            list5 = reactionRequestData.buttons;
        }
        List list6 = list5;
        if ((i2 & 32) != 0) {
            i = reactionRequestData.columnsNumber;
        }
        return reactionRequestData.copy(reactionMessageTypes, reactionMessageFile2, str2, list4, list6, i);
    }

    public final ReactionMessageTypes component1() {
        return this.type;
    }

    public final ReactionMessageFile component2() {
        return this.file;
    }

    public final String component3() {
        return this.text;
    }

    public final List<String> component4() {
        return this.reactions;
    }

    public final List<UrlButton> component5() {
        return this.buttons;
    }

    public final int component6() {
        return this.columnsNumber;
    }

    public final ReactionRequestData copy(ReactionMessageTypes type, ReactionMessageFile reactionMessageFile, String str, List<String> reactions, List<UrlButton> buttons, int i) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(reactions, "reactions");
        Intrinsics.checkNotNullParameter(buttons, "buttons");
        return new ReactionRequestData(type, reactionMessageFile, str, reactions, buttons, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ReactionRequestData) {
            ReactionRequestData reactionRequestData = (ReactionRequestData) obj;
            return this.type == reactionRequestData.type && Intrinsics.areEqual(this.file, reactionRequestData.file) && Intrinsics.areEqual(this.text, reactionRequestData.text) && Intrinsics.areEqual(this.reactions, reactionRequestData.reactions) && Intrinsics.areEqual(this.buttons, reactionRequestData.buttons) && this.columnsNumber == reactionRequestData.columnsNumber;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        ReactionMessageFile reactionMessageFile = this.file;
        int hashCode2 = (hashCode + (reactionMessageFile == null ? 0 : reactionMessageFile.hashCode())) * 31;
        String str = this.text;
        return ((((((hashCode2 + (str != null ? str.hashCode() : 0)) * 31) + this.reactions.hashCode()) * 31) + this.buttons.hashCode()) * 31) + this.columnsNumber;
    }

    public String toString() {
        return "ReactionRequestData(type=" + this.type + ", file=" + this.file + ", text=" + ((Object) this.text) + ", reactions=" + this.reactions + ", buttons=" + this.buttons + ", columnsNumber=" + this.columnsNumber + ')';
    }

    public ReactionRequestData(ReactionMessageTypes type, ReactionMessageFile reactionMessageFile, String str, List<String> reactions, List<UrlButton> buttons, int i) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(reactions, "reactions");
        Intrinsics.checkNotNullParameter(buttons, "buttons");
        this.type = type;
        this.file = reactionMessageFile;
        this.text = str;
        this.reactions = reactions;
        this.buttons = buttons;
        this.columnsNumber = i;
    }

    public final ReactionMessageTypes getType() {
        return this.type;
    }

    public final ReactionMessageFile getFile() {
        return this.file;
    }

    public final String getText() {
        return this.text;
    }

    public final List<String> getReactions() {
        return this.reactions;
    }

    public final List<UrlButton> getButtons() {
        return this.buttons;
    }

    public final int getColumnsNumber() {
        return this.columnsNumber;
    }
}
