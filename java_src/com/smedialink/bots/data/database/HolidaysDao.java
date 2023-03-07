package com.smedialink.bots.data.database;

import com.smedialink.bots.data.model.database.HolidaysDbModel;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: HolidaysDao.kt */
/* loaded from: classes3.dex */
public abstract class HolidaysDao {
    static {
        new Companion(null);
    }

    public abstract String getByUserId(long j);

    public abstract long insertOrReplace(HolidaysDbModel holidaysDbModel);

    public void saveForUser(long j, String fullTag) {
        Set mutableSet;
        String joinToString$default;
        Intrinsics.checkNotNullParameter(fullTag, "fullTag");
        mutableSet = CollectionsKt___CollectionsKt.toMutableSet(getTagsForUser(j));
        mutableSet.add(fullTag);
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(mutableSet, " ", null, null, 0, null, null, 62, null);
        insertOrReplace(new HolidaysDbModel(j, joinToString$default));
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0008, code lost:
        r0 = kotlin.text.StringsKt__StringsKt.split$default((java.lang.CharSequence) r0, new java.lang.String[]{" "}, false, 0, 6, (java.lang.Object) null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Set<java.lang.String> getTagsForUser(long r7) {
        /*
            r6 = this;
            java.lang.String r0 = r6.getByUserId(r7)
            r7 = 0
            if (r0 != 0) goto L8
            goto L3d
        L8:
            java.lang.String r8 = " "
            java.lang.String[] r1 = new java.lang.String[]{r8}
            r2 = 0
            r3 = 0
            r4 = 6
            r5 = 0
            java.util.List r0 = kotlin.text.StringsKt.split$default(r0, r1, r2, r3, r4, r5)
            if (r0 != 0) goto L19
            goto L3d
        L19:
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.Iterator r0 = r0.iterator()
        L22:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L39
            java.lang.Object r1 = r0.next()
            r2 = r1
            java.lang.String r2 = (java.lang.String) r2
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r8)
            if (r2 != 0) goto L22
            r7.add(r1)
            goto L22
        L39:
            java.util.Set r7 = kotlin.collections.CollectionsKt.toMutableSet(r7)
        L3d:
            if (r7 != 0) goto L43
            java.util.Set r7 = kotlin.collections.SetsKt.emptySet()
        L43:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smedialink.bots.data.database.HolidaysDao.getTagsForUser(long):java.util.Set");
    }

    /* compiled from: HolidaysDao.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
