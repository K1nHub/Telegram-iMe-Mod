package com.iMe.fork.controller;

import com.iMe.fork.models.backup.TopicBackup;
import com.iMe.storage.data.repository.topics.Topic;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: BackupController.kt */
/* loaded from: classes3.dex */
final class BackupController$migrateToCurrentVersion$3 extends Lambda implements Function1<TopicBackup, Boolean> {
    public static final BackupController$migrateToCurrentVersion$3 INSTANCE = new BackupController$migrateToCurrentVersion$3();

    BackupController$migrateToCurrentVersion$3() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(TopicBackup topicModel) {
        int collectionSizeOrDefault;
        Set set;
        Intrinsics.checkNotNullParameter(topicModel, "topicModel");
        topicModel.setPresets(new LinkedHashSet());
        if (topicModel.getName() == null) {
            Topic icon = topicModel.getIcon();
            Intrinsics.checkNotNull(icon);
            List<Long> presets = icon.getPresets();
            Intrinsics.checkNotNull(presets);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(presets, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (Number number : presets) {
                arrayList.add(Long.valueOf(-number.longValue()));
            }
            Set<Long> databaseDialogs = topicModel.getDatabaseDialogs();
            set = CollectionsKt___CollectionsKt.toSet(arrayList);
            databaseDialogs.removeAll(set);
            return Boolean.valueOf(topicModel.getDatabaseDialogs().isEmpty());
        }
        return Boolean.FALSE;
    }
}
