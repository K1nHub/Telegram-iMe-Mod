package com.smedialink.bots.data.mapper;

import com.smedialink.bots.data.model.database.TagDbModel;
import com.smedialink.bots.domain.model.SmartTag;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BotTagsMapper.kt */
/* loaded from: classes3.dex */
public final class BotTagsMapper {
    static {
        new Companion(null);
    }

    public final SmartTag map(TagDbModel tagDbModel, String language) {
        String str;
        Intrinsics.checkNotNullParameter(language, "language");
        if (tagDbModel == null) {
            return null;
        }
        if (Intrinsics.areEqual(language, "ru")) {
            str = tagDbModel.getTitle();
        } else {
            str = tagDbModel.getLocales().get(language);
            if (str == null && (str = tagDbModel.getLocales().get("en")) == null) {
                str = tagDbModel.getTitle();
            }
        }
        return new SmartTag(tagDbModel.getId(), str, tagDbModel.getHidden() == 1);
    }

    /* compiled from: BotTagsMapper.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
