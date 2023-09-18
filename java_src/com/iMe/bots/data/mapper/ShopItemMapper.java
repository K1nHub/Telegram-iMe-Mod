package com.iMe.bots.data.mapper;

import com.iMe.bots.data.model.database.BotsDbModel;
import com.iMe.bots.data.model.database.TagDbModel;
import com.iMe.bots.domain.model.ShopItem;
import com.iMe.bots.domain.model.SmartTag;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: ShopItemMapper.kt */
/* loaded from: classes4.dex */
public final class ShopItemMapper {
    private final BotTagsMapper tagsMapper = new BotTagsMapper();

    static {
        new Companion(null);
    }

    public final ShopItem mapItem(BotsDbModel from, List<TagDbModel> list, String language) {
        int collectionSizeOrDefault;
        String str;
        String str2;
        String capitalize;
        TagDbModel tagDbModel;
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(language, "language");
        List<String> tags = from.getTags();
        ArrayList<SmartTag> arrayList = new ArrayList();
        for (String str3 : tags) {
            BotTagsMapper botTagsMapper = this.tagsMapper;
            ListIterator<TagDbModel> listIterator = list.listIterator(list.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    tagDbModel = null;
                    break;
                }
                tagDbModel = listIterator.previous();
                if (Intrinsics.areEqual(tagDbModel.getId(), str3)) {
                    break;
                }
            }
            SmartTag map = botTagsMapper.map(tagDbModel, language);
            if (map != null) {
                arrayList.add(map);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (SmartTag smartTag : arrayList) {
            capitalize = StringsKt__StringsJVMKt.capitalize(smartTag.getTitle());
            arrayList2.add(SmartTag.copy$default(smartTag, null, capitalize, false, 5, null));
        }
        if (Intrinsics.areEqual(language, "ru")) {
            str = from.getTitle();
        } else {
            str = from.getTitleLocales().get(language);
            if (str == null && (str = from.getTitleLocales().get("en")) == null) {
                str = from.getTitle();
            }
        }
        String str4 = str;
        if (Intrinsics.areEqual(language, "ru")) {
            str2 = from.getDescription();
        } else {
            str2 = from.getDescriptionLocales().get(language);
            if (str2 == null && (str2 = from.getDescriptionLocales().get("en")) == null) {
                str2 = from.getDescription();
            }
        }
        return new ShopItem(from.getId(), from.getSku(), from.getAvatarRounded(), from.getLang(), str4, str2, from.getInstalls(), from.getPriority(), from.getReviews(), from.getRating(), from.getOwnRating(), from.getPhrases(), from.getThemes(), getDateString(from.getCreated()), getDateString(from.getUpdated()), arrayList2, from.getPrice(), from.getFile(), from.getType(), from.getStatus());
    }

    private final String getDateString(Date date) {
        String format = new SimpleDateFormat("dd.MM.yyyy", Locale.getDefault()).format(date);
        Intrinsics.checkNotNullExpressionValue(format, "SimpleDateFormat(\"dd.MM.…etDefault()).format(date)");
        return format;
    }

    /* compiled from: ShopItemMapper.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final List<ShopItem> mapList(List<BotsDbModel> from, String language, List<TagDbModel> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(language, "language");
        Intrinsics.checkNotNullParameter(list, "list");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(from, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BotsDbModel botsDbModel : from) {
            arrayList.add(mapItem(botsDbModel, list, language));
        }
        return arrayList;
    }
}
