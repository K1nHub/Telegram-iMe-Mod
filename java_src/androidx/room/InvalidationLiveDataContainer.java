package androidx.room;

import java.util.Collections;
import java.util.IdentityHashMap;
/* loaded from: classes.dex */
class InvalidationLiveDataContainer {
    /* JADX INFO: Access modifiers changed from: package-private */
    public InvalidationLiveDataContainer(RoomDatabase roomDatabase) {
        Collections.newSetFromMap(new IdentityHashMap());
    }
}
