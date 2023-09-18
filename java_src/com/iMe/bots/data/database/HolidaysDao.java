package com.iMe.bots.data.database;

import com.iMe.bots.data.model.database.HolidaysDbModel;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: HolidaysDao.kt */
/* loaded from: classes4.dex */
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

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0006, code lost:
        r8 = kotlin.text.StringsKt__StringsKt.split$default((java.lang.CharSequence) r0, new java.lang.String[]{" "}, false, 0, 6, (java.lang.Object) null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Set<java.lang.String> getTagsForUser(long r7) {
        /*
            r6 = this;
            java.lang.String r0 = r6.getByUserId(r7)
            if (r0 == 0) goto L3d
            java.lang.String r7 = " "
            java.lang.String[] r1 = new java.lang.String[]{r7}
            r2 = 0
            r3 = 0
            r4 = 6
            r5 = 0
            java.util.List r8 = kotlin.text.StringsKt.split$default(r0, r1, r2, r3, r4, r5)
            if (r8 == 0) goto L3d
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r8 = r8.iterator()
        L1f:
            boolean r1 = r8.hasNext()
            if (r1 == 0) goto L36
            java.lang.Object r1 = r8.next()
            r2 = r1
            java.lang.String r2 = (java.lang.String) r2
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r7)
            if (r2 != 0) goto L1f
            r0.add(r1)
            goto L1f
        L36:
            java.util.Set r7 = kotlin.collections.CollectionsKt.toMutableSet(r0)
            if (r7 == 0) goto L3d
            goto L41
        L3d:
            java.util.Set r7 = kotlin.collections.SetsKt.emptySet()
        L41:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.bots.data.database.HolidaysDao.getTagsForUser(long):java.util.Set");
    }

    /* compiled from: HolidaysDao.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
