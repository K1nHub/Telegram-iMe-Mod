package com.iMe.p031ui.smartpanel.mapper;

import com.iMe.bots.domain.model.SmartBotResponse;
import com.iMe.p031ui.smartpanel.model.SmartBotTab;
import com.iMe.p031ui.smartpanel.model.SmartPanelTabContent;
import com.iMe.p031ui.smartpanel.model.content.TabBotAnswerItem;
import com.iMe.p031ui.smartpanel.model.content.TabBotNameItem;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SmartContentMapper.kt */
/* renamed from: com.iMe.ui.smartpanel.mapper.SmartContentMapper */
/* loaded from: classes3.dex */
public final class SmartContentMapper {
    public final List<SmartBotTab> mapToTabs(List<SmartBotResponse> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (SmartBotResponse smartBotResponse : list) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(new TabBotNameItem(SmartPanelTabContent.Type.NORMAL_BOT_LABEL, smartBotResponse.getName()));
                arrayList2.addAll(responseToContentItems(smartBotResponse));
                if (z || (!z && !Intrinsics.areEqual(smartBotResponse.getId(), "recent"))) {
                    arrayList.add(new SmartBotTab(smartBotResponse.getLocalAvatar(), smartBotResponse.getRemoteAvatar(), smartBotResponse.getId(), smartBotResponse.getName(), smartBotResponse.getGif(), arrayList2));
                }
            }
        }
        return arrayList;
    }

    private final List<SmartPanelTabContent> responseToContentItems(SmartBotResponse smartBotResponse) {
        int collectionSizeOrDefault;
        List<String> answers = smartBotResponse.getAnswers();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(answers, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (String str : answers) {
            arrayList.add(new TabBotAnswerItem(SmartPanelTabContent.Type.NORMAL_BOT_ANSWER, smartBotResponse.getId(), str, smartBotResponse.getTag(), smartBotResponse.getLink()));
        }
        return arrayList;
    }
}
