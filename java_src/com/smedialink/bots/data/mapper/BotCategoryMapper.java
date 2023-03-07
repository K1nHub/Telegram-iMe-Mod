package com.smedialink.bots.data.mapper;

import com.smedialink.bots.data.model.database.BotsCategoryDbModel;
import com.smedialink.bots.domain.model.SmartBotCategory;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BotCategoryMapper.kt */
/* loaded from: classes3.dex */
public final class BotCategoryMapper {
    static {
        new Companion(null);
    }

    private final SmartBotCategory mapItem(BotsCategoryDbModel botsCategoryDbModel, String str) {
        String str2;
        if (botsCategoryDbModel == null) {
            return null;
        }
        String id = botsCategoryDbModel.getId();
        if (Intrinsics.areEqual(str, "ru")) {
            str2 = botsCategoryDbModel.getTitle();
        } else {
            str2 = botsCategoryDbModel.getLocales().get(str);
            if (str2 == null && (str2 = botsCategoryDbModel.getLocales().get("en")) == null) {
                str2 = botsCategoryDbModel.getTitle();
            }
        }
        return new SmartBotCategory(id, str2, botsCategoryDbModel.getPriority(), botsCategoryDbModel.getTags());
    }

    /* compiled from: BotCategoryMapper.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final List<SmartBotCategory> mapList(List<BotsCategoryDbModel> from, String language) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(language, "language");
        ArrayList arrayList = new ArrayList();
        for (BotsCategoryDbModel botsCategoryDbModel : from) {
            SmartBotCategory mapItem = mapItem(botsCategoryDbModel, language);
            if (mapItem != null) {
                arrayList.add(mapItem);
            }
        }
        return arrayList;
    }
}
