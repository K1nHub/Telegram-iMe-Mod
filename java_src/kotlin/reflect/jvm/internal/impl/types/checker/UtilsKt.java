package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayDeque;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt;
/* compiled from: utils.kt */
/* loaded from: classes4.dex */
public final class UtilsKt {
    public static final KotlinType findCorrespondingSupertype(KotlinType subtype, KotlinType supertype, TypeCheckingProcedureCallbacks typeCheckingProcedureCallbacks) {
        TypeConstructor constructor;
        boolean z;
        boolean z2;
        Intrinsics.checkNotNullParameter(subtype, "subtype");
        Intrinsics.checkNotNullParameter(supertype, "supertype");
        Intrinsics.checkNotNullParameter(typeCheckingProcedureCallbacks, "typeCheckingProcedureCallbacks");
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(new SubtypePathNode(subtype, null));
        TypeConstructor constructor2 = supertype.getConstructor();
        while (!arrayDeque.isEmpty()) {
            SubtypePathNode subtypePathNode = (SubtypePathNode) arrayDeque.poll();
            KotlinType type = subtypePathNode.getType();
            TypeConstructor constructor3 = type.getConstructor();
            if (typeCheckingProcedureCallbacks.assertEqualTypeConstructors(constructor3, constructor2)) {
                boolean isMarkedNullable = type.isMarkedNullable();
                for (SubtypePathNode previous = subtypePathNode.getPrevious(); previous != null; previous = previous.getPrevious()) {
                    KotlinType type2 = previous.getType();
                    List<TypeProjection> arguments = type2.getArguments();
                    if (!(arguments instanceof Collection) || !arguments.isEmpty()) {
                        for (TypeProjection typeProjection : arguments) {
                            if (typeProjection.getProjectionKind() != Variance.INVARIANT) {
                                z = true;
                                continue;
                            } else {
                                z = false;
                                continue;
                            }
                            if (z) {
                                z2 = true;
                                break;
                            }
                        }
                    }
                    z2 = false;
                    if (z2) {
                        KotlinType safeSubstitute = CapturedTypeConstructorKt.wrapWithCapturingSubstitution$default(TypeConstructorSubstitution.Companion.create(type2), false, 1, null).buildSubstitutor().safeSubstitute(type, Variance.INVARIANT);
                        Intrinsics.checkNotNullExpressionValue(safeSubstitute, "TypeConstructorSubstitut…uted, Variance.INVARIANT)");
                        type = approximate(safeSubstitute);
                    } else {
                        type = TypeConstructorSubstitution.Companion.create(type2).buildSubstitutor().safeSubstitute(type, Variance.INVARIANT);
                        Intrinsics.checkNotNullExpressionValue(type, "{\n                    Ty…ARIANT)\n                }");
                    }
                    isMarkedNullable = isMarkedNullable || type2.isMarkedNullable();
                }
                if (typeCheckingProcedureCallbacks.assertEqualTypeConstructors(type.getConstructor(), constructor2)) {
                    return TypeUtils.makeNullableAsSpecified(type, isMarkedNullable);
                }
                throw new AssertionError("Type constructors should be equals!\nsubstitutedSuperType: " + debugInfo(constructor) + ", \n\nsupertype: " + debugInfo(constructor2) + " \n" + typeCheckingProcedureCallbacks.assertEqualTypeConstructors(constructor, constructor2));
            }
            for (KotlinType immediateSupertype : constructor3.mo2054getSupertypes()) {
                Intrinsics.checkNotNullExpressionValue(immediateSupertype, "immediateSupertype");
                arrayDeque.add(new SubtypePathNode(immediateSupertype, subtypePathNode));
            }
        }
        return null;
    }

    private static final KotlinType approximate(KotlinType kotlinType) {
        return CapturedTypeApproximationKt.approximateCapturedTypes(kotlinType).getUpper();
    }

    private static final String debugInfo(TypeConstructor typeConstructor) {
        StringBuilder sb = new StringBuilder();
        debugInfo$lambda$1$unaryPlus("type: " + typeConstructor, sb);
        debugInfo$lambda$1$unaryPlus("hashCode: " + typeConstructor.hashCode(), sb);
        debugInfo$lambda$1$unaryPlus("javaClass: " + typeConstructor.getClass().getCanonicalName(), sb);
        for (DeclarationDescriptor mo2053getDeclarationDescriptor = typeConstructor.mo2053getDeclarationDescriptor(); mo2053getDeclarationDescriptor != null; mo2053getDeclarationDescriptor = mo2053getDeclarationDescriptor.getContainingDeclaration()) {
            debugInfo$lambda$1$unaryPlus("fqName: " + DescriptorRenderer.FQ_NAMES_IN_TYPES.render(mo2053getDeclarationDescriptor), sb);
            debugInfo$lambda$1$unaryPlus("javaClass: " + mo2053getDeclarationDescriptor.getClass().getCanonicalName(), sb);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    private static final StringBuilder debugInfo$lambda$1$unaryPlus(String str, StringBuilder sb) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        sb.append(str);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        return sb;
    }
}
