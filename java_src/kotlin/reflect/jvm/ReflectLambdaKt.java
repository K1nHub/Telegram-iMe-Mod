package kotlin.reflect.jvm;

import kotlin.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;
import kotlin.reflect.jvm.internal.EmptyContainerForLocal;
import kotlin.reflect.jvm.internal.KFunctionImpl;
import kotlin.reflect.jvm.internal.UtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmNameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
/* compiled from: reflectLambda.kt */
/* loaded from: classes4.dex */
public final class ReflectLambdaKt {
    public static final <R> KFunction<R> reflect(Function<? extends R> function) {
        Intrinsics.checkNotNullParameter(function, "<this>");
        Metadata metadata = (Metadata) function.getClass().getAnnotation(Metadata.class);
        if (metadata == null) {
            return null;
        }
        String[] m156d1 = metadata.m156d1();
        if (m156d1.length == 0) {
            m156d1 = null;
        }
        if (m156d1 == null) {
            return null;
        }
        Pair<JvmNameResolver, ProtoBuf$Function> readFunctionDataFrom = JvmProtoBufUtil.readFunctionDataFrom(m156d1, metadata.m155d2());
        JvmNameResolver component1 = readFunctionDataFrom.component1();
        ProtoBuf$Function component2 = readFunctionDataFrom.component2();
        JvmMetadataVersion jvmMetadataVersion = new JvmMetadataVersion(metadata.m153mv(), (metadata.m151xi() & 8) != 0);
        Class<?> cls = function.getClass();
        ProtoBuf$TypeTable typeTable = component2.getTypeTable();
        Intrinsics.checkNotNullExpressionValue(typeTable, "proto.typeTable");
        return new KFunctionImpl(EmptyContainerForLocal.INSTANCE, (SimpleFunctionDescriptor) UtilKt.deserializeToDescriptor(cls, component2, component1, new TypeTable(typeTable), jvmMetadataVersion, ReflectLambdaKt$reflect$descriptor$1.INSTANCE));
    }
}
