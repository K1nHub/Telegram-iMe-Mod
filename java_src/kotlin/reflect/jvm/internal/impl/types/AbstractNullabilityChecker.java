package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayDeque;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;
/* compiled from: AbstractTypeChecker.kt */
/* loaded from: classes4.dex */
public final class AbstractNullabilityChecker {
    public static final AbstractNullabilityChecker INSTANCE = new AbstractNullabilityChecker();

    private AbstractNullabilityChecker() {
    }

    public final boolean isPossibleSubtype(TypeCheckerState state, SimpleTypeMarker subType, SimpleTypeMarker superType) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(subType, "subType");
        Intrinsics.checkNotNullParameter(superType, "superType");
        return runIsPossibleSubtype(state, subType, superType);
    }

    private final boolean runIsPossibleSubtype(TypeCheckerState typeCheckerState, SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
        TypeSystemContext typeSystemContext = typeCheckerState.getTypeSystemContext();
        if (AbstractTypeChecker.RUN_SLOW_ASSERTIONS) {
            if (!typeSystemContext.isSingleClassifierType(simpleTypeMarker) && !typeSystemContext.isIntersection(typeSystemContext.typeConstructor(simpleTypeMarker))) {
                typeCheckerState.isAllowedTypeVariable(simpleTypeMarker);
            }
            if (!typeSystemContext.isSingleClassifierType(simpleTypeMarker2)) {
                typeCheckerState.isAllowedTypeVariable(simpleTypeMarker2);
            }
        }
        if (typeSystemContext.isMarkedNullable(simpleTypeMarker2) || typeSystemContext.isDefinitelyNotNullType(simpleTypeMarker) || typeSystemContext.isNotNullTypeParameter(simpleTypeMarker)) {
            return true;
        }
        if ((simpleTypeMarker instanceof CapturedTypeMarker) && typeSystemContext.isProjectionNotNull((CapturedTypeMarker) simpleTypeMarker)) {
            return true;
        }
        AbstractNullabilityChecker abstractNullabilityChecker = INSTANCE;
        if (abstractNullabilityChecker.hasNotNullSupertype(typeCheckerState, simpleTypeMarker, TypeCheckerState.SupertypesPolicy.LowerIfFlexible.INSTANCE)) {
            return true;
        }
        if (typeSystemContext.isDefinitelyNotNullType(simpleTypeMarker2) || abstractNullabilityChecker.hasNotNullSupertype(typeCheckerState, simpleTypeMarker2, TypeCheckerState.SupertypesPolicy.UpperIfFlexible.INSTANCE) || typeSystemContext.isClassType(simpleTypeMarker)) {
            return false;
        }
        return abstractNullabilityChecker.hasPathByNotMarkedNullableNodes(typeCheckerState, simpleTypeMarker, typeSystemContext.typeConstructor(simpleTypeMarker2));
    }

    public final boolean hasNotNullSupertype(TypeCheckerState typeCheckerState, SimpleTypeMarker type, TypeCheckerState.SupertypesPolicy supertypesPolicy) {
        String joinToString$default;
        Intrinsics.checkNotNullParameter(typeCheckerState, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(supertypesPolicy, "supertypesPolicy");
        TypeSystemContext typeSystemContext = typeCheckerState.getTypeSystemContext();
        if (!((typeSystemContext.isClassType(type) && !typeSystemContext.isMarkedNullable(type)) || typeSystemContext.isDefinitelyNotNullType(type))) {
            typeCheckerState.initialize();
            ArrayDeque<SimpleTypeMarker> supertypesDeque = typeCheckerState.getSupertypesDeque();
            Intrinsics.checkNotNull(supertypesDeque);
            Set<SimpleTypeMarker> supertypesSet = typeCheckerState.getSupertypesSet();
            Intrinsics.checkNotNull(supertypesSet);
            supertypesDeque.push(type);
            while (!supertypesDeque.isEmpty()) {
                if (supertypesSet.size() > 1000) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Too many supertypes for type: ");
                    sb.append(type);
                    sb.append(". Supertypes = ");
                    joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(supertypesSet, null, null, null, 0, null, null, 63, null);
                    sb.append(joinToString$default);
                    throw new IllegalStateException(sb.toString().toString());
                }
                SimpleTypeMarker current = supertypesDeque.pop();
                Intrinsics.checkNotNullExpressionValue(current, "current");
                if (supertypesSet.add(current)) {
                    TypeCheckerState.SupertypesPolicy supertypesPolicy2 = typeSystemContext.isMarkedNullable(current) ? TypeCheckerState.SupertypesPolicy.None.INSTANCE : supertypesPolicy;
                    if (!(!Intrinsics.areEqual(supertypesPolicy2, TypeCheckerState.SupertypesPolicy.None.INSTANCE))) {
                        supertypesPolicy2 = null;
                    }
                    if (supertypesPolicy2 == null) {
                        continue;
                    } else {
                        TypeSystemContext typeSystemContext2 = typeCheckerState.getTypeSystemContext();
                        for (KotlinTypeMarker kotlinTypeMarker : typeSystemContext2.supertypes(typeSystemContext2.typeConstructor(current))) {
                            SimpleTypeMarker mo2058transformType = supertypesPolicy2.mo2058transformType(typeCheckerState, kotlinTypeMarker);
                            if ((typeSystemContext.isClassType(mo2058transformType) && !typeSystemContext.isMarkedNullable(mo2058transformType)) || typeSystemContext.isDefinitelyNotNullType(mo2058transformType)) {
                                typeCheckerState.clear();
                            } else {
                                supertypesDeque.add(mo2058transformType);
                            }
                        }
                        continue;
                    }
                }
            }
            typeCheckerState.clear();
            return false;
        }
        return true;
    }

    public final boolean hasPathByNotMarkedNullableNodes(TypeCheckerState state, SimpleTypeMarker start, TypeConstructorMarker end) {
        String joinToString$default;
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(end, "end");
        TypeSystemContext typeSystemContext = state.getTypeSystemContext();
        if (INSTANCE.isApplicableAsEndNode(state, start, end)) {
            return true;
        }
        state.initialize();
        ArrayDeque<SimpleTypeMarker> supertypesDeque = state.getSupertypesDeque();
        Intrinsics.checkNotNull(supertypesDeque);
        Set<SimpleTypeMarker> supertypesSet = state.getSupertypesSet();
        Intrinsics.checkNotNull(supertypesSet);
        supertypesDeque.push(start);
        while (!supertypesDeque.isEmpty()) {
            if (supertypesSet.size() > 1000) {
                StringBuilder sb = new StringBuilder();
                sb.append("Too many supertypes for type: ");
                sb.append(start);
                sb.append(". Supertypes = ");
                joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(supertypesSet, null, null, null, 0, null, null, 63, null);
                sb.append(joinToString$default);
                throw new IllegalStateException(sb.toString().toString());
            }
            SimpleTypeMarker current = supertypesDeque.pop();
            Intrinsics.checkNotNullExpressionValue(current, "current");
            if (supertypesSet.add(current)) {
                TypeCheckerState.SupertypesPolicy supertypesPolicy = typeSystemContext.isMarkedNullable(current) ? TypeCheckerState.SupertypesPolicy.None.INSTANCE : TypeCheckerState.SupertypesPolicy.LowerIfFlexible.INSTANCE;
                if (!(!Intrinsics.areEqual(supertypesPolicy, TypeCheckerState.SupertypesPolicy.None.INSTANCE))) {
                    supertypesPolicy = null;
                }
                if (supertypesPolicy == null) {
                    continue;
                } else {
                    TypeSystemContext typeSystemContext2 = state.getTypeSystemContext();
                    for (KotlinTypeMarker kotlinTypeMarker : typeSystemContext2.supertypes(typeSystemContext2.typeConstructor(current))) {
                        SimpleTypeMarker mo2058transformType = supertypesPolicy.mo2058transformType(state, kotlinTypeMarker);
                        if (INSTANCE.isApplicableAsEndNode(state, mo2058transformType, end)) {
                            state.clear();
                            return true;
                        }
                        supertypesDeque.add(mo2058transformType);
                    }
                    continue;
                }
            }
        }
        state.clear();
        return false;
    }

    private final boolean isApplicableAsEndNode(TypeCheckerState typeCheckerState, SimpleTypeMarker simpleTypeMarker, TypeConstructorMarker typeConstructorMarker) {
        TypeSystemContext typeSystemContext = typeCheckerState.getTypeSystemContext();
        if (typeSystemContext.isNothing(simpleTypeMarker)) {
            return true;
        }
        if (typeSystemContext.isMarkedNullable(simpleTypeMarker)) {
            return false;
        }
        if (typeCheckerState.isStubTypeEqualsToAnything() && typeSystemContext.isStubType(simpleTypeMarker)) {
            return true;
        }
        return typeSystemContext.areEqualTypeConstructors(typeSystemContext.typeConstructor(simpleTypeMarker), typeConstructorMarker);
    }
}
