package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.HashSet;
import java.util.Set;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.Name;
/* compiled from: MemberScope.kt */
/* loaded from: classes4.dex */
public final class MemberScopeKt {
    public static final Set<Name> flatMapClassifierNamesOrNull(Iterable<? extends MemberScope> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        HashSet hashSet = new HashSet();
        for (MemberScope memberScope : iterable) {
            Set<Name> classifierNames = memberScope.getClassifierNames();
            if (classifierNames == null) {
                return null;
            }
            CollectionsKt__MutableCollectionsKt.addAll(hashSet, classifierNames);
        }
        return hashSet;
    }
}
