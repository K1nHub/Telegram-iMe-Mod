package com.google.firebase.firestore.local;

import com.google.firebase.database.collection.ImmutableSortedSet;
import com.google.firebase.firestore.core.Target;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.SnapshotVersion;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public interface TargetCache {
    void addMatchingKeys(ImmutableSortedSet<DocumentKey> immutableSortedSet, int i);

    void addTargetData(TargetData targetData);

    int getHighestTargetId();

    SnapshotVersion getLastRemoteSnapshotVersion();

    ImmutableSortedSet<DocumentKey> getMatchingKeysForTargetId(int i);

    TargetData getTargetData(Target target);

    void removeMatchingKeys(ImmutableSortedSet<DocumentKey> immutableSortedSet, int i);

    void setLastRemoteSnapshotVersion(SnapshotVersion snapshotVersion);

    void updateTargetData(TargetData targetData);
}
