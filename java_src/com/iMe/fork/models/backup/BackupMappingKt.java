package com.iMe.fork.models.backup;

import com.iMe.fork.enums.MultiPanelButton;
import com.iMe.fork.enums.SortingFilter;
import com.iMe.fork.models.MultiPanelButtonState;
import com.iMe.fork.models.SortingTabState;
import com.iMe.storage.data.locale.p026db.model.topics.TopicDb;
import com.iMe.storage.data.repository.topics.Topic;
import com.iMe.storage.domain.model.topics.TopicModel;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BackupMapping.kt */
/* loaded from: classes3.dex */
public final class BackupMappingKt {
    public static final TopicBackup mapToBackup(TopicModel topicModel) {
        Intrinsics.checkNotNullParameter(topicModel, "<this>");
        return new TopicBackup(topicModel.getName(), topicModel.getIcon(), topicModel.getOrder(), topicModel.isHidden(), topicModel.getPresets(), topicModel.getDialogs(), null, 64, null);
    }

    public static final TopicDb mapToDb(TopicBackup topicBackup, long j, long j2) {
        List mutableList;
        List mutableList2;
        Intrinsics.checkNotNullParameter(topicBackup, "<this>");
        String name = topicBackup.getName();
        Topic icon = topicBackup.getIcon();
        String name2 = icon != null ? icon.name() : null;
        int order = topicBackup.getOrder();
        boolean isHidden = topicBackup.isHidden();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) topicBackup.getPresets());
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) topicBackup.getDatabaseDialogs());
        return new TopicDb(j, name, name2, order, isHidden, mutableList, mutableList2, j2);
    }

    public static final SortingTabStateBackup mapToBackup(SortingTabState sortingTabState) {
        Intrinsics.checkNotNullParameter(sortingTabState, "<this>");
        return new SortingTabStateBackup(sortingTabState.getType().name(), sortingTabState.getFabs(), sortingTabState.getPosition(), sortingTabState.isEnabled(), null, 16, null);
    }

    public static final SortingTabState mapToDomain(SortingTabStateBackup sortingTabStateBackup) {
        Intrinsics.checkNotNullParameter(sortingTabStateBackup, "<this>");
        SortingFilter mapNameToEnum = SortingFilter.Companion.mapNameToEnum(sortingTabStateBackup.getType());
        if (mapNameToEnum != null) {
            return new SortingTabState(mapNameToEnum, sortingTabStateBackup.getFabs(), sortingTabStateBackup.getPosition(), sortingTabStateBackup.isEnabled());
        }
        return null;
    }

    public static final MultiPanelButtonStateBackup mapToBackup(MultiPanelButtonState multiPanelButtonState) {
        Intrinsics.checkNotNullParameter(multiPanelButtonState, "<this>");
        return new MultiPanelButtonStateBackup(multiPanelButtonState.getType().name(), multiPanelButtonState.isEnabled(), multiPanelButtonState.getPosition());
    }

    public static final MultiPanelButtonState mapToDomain(MultiPanelButtonStateBackup multiPanelButtonStateBackup) {
        Intrinsics.checkNotNullParameter(multiPanelButtonStateBackup, "<this>");
        MultiPanelButton map = MultiPanelButton.Companion.map(multiPanelButtonStateBackup.getType());
        if (map == null) {
            return null;
        }
        return new MultiPanelButtonState(map, multiPanelButtonStateBackup.isEnabled(), multiPanelButtonStateBackup.getPosition());
    }
}
