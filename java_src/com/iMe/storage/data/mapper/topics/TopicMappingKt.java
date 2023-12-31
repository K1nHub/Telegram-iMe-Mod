package com.iMe.storage.data.mapper.topics;

import com.google.android.exoplayer2.RendererCapabilities;
import com.iMe.storage.data.locale.p026db.model.topics.TopicDb;
import com.iMe.storage.data.repository.topics.Topic;
import com.iMe.storage.domain.model.topics.TopicModel;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TopicMapping.kt */
/* loaded from: classes3.dex */
public final class TopicMappingKt {
    public static final TopicModel mapToDomain(TopicDb topicDb) {
        Set mutableSet;
        Set mutableSet2;
        Intrinsics.checkNotNullParameter(topicDb, "<this>");
        long topicId = topicDb.getTopicId();
        String name = topicDb.getName();
        Topic valueOf = topicDb.getIcon() != null ? Topic.valueOf(topicDb.getIcon()) : null;
        int order = topicDb.getOrder();
        boolean isHidden = topicDb.isHidden();
        mutableSet = CollectionsKt___CollectionsKt.toMutableSet(topicDb.getPresets());
        mutableSet2 = CollectionsKt___CollectionsKt.toMutableSet(topicDb.getDialogs());
        return new TopicModel(topicId, name, valueOf, order, isHidden, mutableSet, mutableSet2, null, null, RendererCapabilities.MODE_SUPPORT_MASK, null);
    }

    public static final TopicDb mapToDb(TopicModel topicModel, long j) {
        List mutableList;
        List mutableList2;
        Intrinsics.checkNotNullParameter(topicModel, "<this>");
        long topicId = topicModel.getTopicId();
        String name = topicModel.getName();
        Topic icon = topicModel.getIcon();
        String name2 = icon != null ? icon.name() : null;
        int order = topicModel.getOrder();
        boolean isHidden = topicModel.isHidden();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) topicModel.getPresets());
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) topicModel.getDialogs());
        return new TopicDb(topicId, name, name2, order, isHidden, mutableList, mutableList2, j);
    }
}
