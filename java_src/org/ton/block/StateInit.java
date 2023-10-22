package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.block.Just;
import org.ton.block.Nothing;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashMapE;
import org.ton.hashmap.HmeEmpty;
import org.ton.hashmap.HmeRoot;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: StateInit.kt */
@Serializable
/* loaded from: classes6.dex */
public final class StateInit implements TlbObject {
    private static final KSerializer<Object>[] $childSerializers;
    public static final Companion Companion = new Companion(null);
    private final Maybe<CellRef<Cell>> code;
    private final Maybe<CellRef<Cell>> data;
    private final HashMapE<SimpleLib> library;
    private final Maybe<TickTock> special;
    private final Maybe<UInt> splitDepth;

    public /* synthetic */ StateInit(Cell cell, Cell cell2, HashMapE hashMapE, UInt uInt, TickTock tickTock, DefaultConstructorMarker defaultConstructorMarker) {
        this(cell, cell2, hashMapE, uInt, tickTock);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StateInit) {
            StateInit stateInit = (StateInit) obj;
            return Intrinsics.areEqual(this.splitDepth, stateInit.splitDepth) && Intrinsics.areEqual(this.special, stateInit.special) && Intrinsics.areEqual(this.code, stateInit.code) && Intrinsics.areEqual(this.data, stateInit.data) && Intrinsics.areEqual(this.library, stateInit.library);
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.splitDepth.hashCode() * 31) + this.special.hashCode()) * 31) + this.code.hashCode()) * 31) + this.data.hashCode()) * 31) + this.library.hashCode();
    }

    public /* synthetic */ StateInit(int i, Maybe maybe, Maybe maybe2, Maybe maybe3, Maybe maybe4, HashMapE hashMapE, SerializationConstructorMarker serializationConstructorMarker) {
        if (31 != (i & 31)) {
            PluginExceptionsKt.throwMissingFieldException(i, 31, StateInit$$serializer.INSTANCE.getDescriptor());
        }
        this.splitDepth = maybe;
        this.special = maybe2;
        this.code = maybe3;
        this.data = maybe4;
        this.library = hashMapE;
    }

    public StateInit(Maybe<UInt> splitDepth, Maybe<TickTock> special, Maybe<CellRef<Cell>> code, Maybe<CellRef<Cell>> data, HashMapE<SimpleLib> library) {
        Intrinsics.checkNotNullParameter(splitDepth, "splitDepth");
        Intrinsics.checkNotNullParameter(special, "special");
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(library, "library");
        this.splitDepth = splitDepth;
        this.special = special;
        this.code = code;
        this.data = data;
        this.library = library;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private StateInit(org.ton.cell.Cell r8, org.ton.cell.Cell r9, org.ton.hashmap.HashMapE<org.ton.block.SimpleLib> r10, kotlin.UInt r11, org.ton.block.TickTock r12) {
        /*
            r7 = this;
            java.lang.String r0 = "library"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            org.ton.block.Maybe$Companion r0 = org.ton.block.Maybe.Companion
            org.ton.block.Maybe r2 = r0.m37of(r11)
            org.ton.block.Maybe r3 = r0.m37of(r12)
            r11 = 0
            if (r8 == 0) goto L1b
            org.ton.tlb.constructor.AnyTlbConstructor r12 = org.ton.tlb.constructor.AnyTlbConstructor.INSTANCE
            org.ton.tlb.CellRef$Companion r1 = org.ton.tlb.CellRef.Companion
            org.ton.tlb.CellRef r8 = r1.valueOf(r8, r12)
            goto L1c
        L1b:
            r8 = r11
        L1c:
            org.ton.block.Maybe r4 = r0.m37of(r8)
            if (r9 == 0) goto L2a
            org.ton.tlb.constructor.AnyTlbConstructor r8 = org.ton.tlb.constructor.AnyTlbConstructor.INSTANCE
            org.ton.tlb.CellRef$Companion r11 = org.ton.tlb.CellRef.Companion
            org.ton.tlb.CellRef r11 = r11.valueOf(r9, r8)
        L2a:
            org.ton.block.Maybe r5 = r0.m37of(r11)
            r1 = r7
            r6 = r10
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.block.StateInit.<init>(org.ton.cell.Cell, org.ton.cell.Cell, org.ton.hashmap.HashMapE, kotlin.UInt, org.ton.block.TickTock):void");
    }

    public static final /* synthetic */ void write$Self(StateInit stateInit, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], stateInit.splitDepth);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], stateInit.special);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], stateInit.code);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], stateInit.data);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, kSerializerArr[4], stateInit.library);
    }

    public final Maybe<UInt> splitDepth() {
        return this.splitDepth;
    }

    public final Maybe<TickTock> special() {
        return this.special;
    }

    public final Maybe<CellRef<Cell>> code() {
        return this.code;
    }

    public final Maybe<CellRef<Cell>> data() {
        return this.data;
    }

    public final HashMapE<SimpleLib> library() {
        return this.library;
    }

    public /* synthetic */ StateInit(Cell cell, Cell cell2, HashMapE hashMapE, UInt uInt, TickTock tickTock, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : cell, (i & 2) != 0 ? null : cell2, (i & 4) != 0 ? HashMapE.Companion.m26of() : hashMapE, (i & 8) != 0 ? null : uInt, (i & 16) != 0 ? null : tickTock, null);
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: StateInit.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<StateInit> {
        private final /* synthetic */ StateInitTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public StateInit loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public StateInit loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, StateInit value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = StateInitTlbConstructor.INSTANCE;
        }

        public final KSerializer<StateInit> serializer() {
            return StateInit$$serializer.INSTANCE;
        }
    }

    static {
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Maybe.class);
        KClass[] kClassArr = {Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)};
        Just.Companion companion = Just.Companion;
        Nothing.Companion companion2 = Nothing.Companion;
        $childSerializers = new KSerializer[]{new SealedClassSerializer("org.ton.block.Maybe", orCreateKotlinClass, kClassArr, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
            private final /* synthetic */ String discriminator;

            {
                Intrinsics.checkNotNullParameter(discriminator, "discriminator");
                this.discriminator = discriminator;
            }

            @Override // java.lang.annotation.Annotation
            public final /* synthetic */ Class annotationType() {
                return JsonClassDiscriminator.class;
            }

            @Override // kotlinx.serialization.json.JsonClassDiscriminator
            public final /* synthetic */ String discriminator() {
                return this.discriminator;
            }

            @Override // java.lang.annotation.Annotation
            public final boolean equals(Object obj) {
                return (obj instanceof JsonClassDiscriminator) && Intrinsics.areEqual(discriminator(), ((JsonClassDiscriminator) obj).discriminator());
            }

            @Override // java.lang.annotation.Annotation
            public final int hashCode() {
                return this.discriminator.hashCode() ^ 707790692;
            }

            @Override // java.lang.annotation.Annotation
            public final String toString() {
                return "@kotlinx.serialization.json.JsonClassDiscriminator(discriminator=" + this.discriminator + ')';
            }
        }}), new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
            private final /* synthetic */ String discriminator;

            {
                Intrinsics.checkNotNullParameter(discriminator, "discriminator");
                this.discriminator = discriminator;
            }

            @Override // java.lang.annotation.Annotation
            public final /* synthetic */ Class annotationType() {
                return JsonClassDiscriminator.class;
            }

            @Override // kotlinx.serialization.json.JsonClassDiscriminator
            public final /* synthetic */ String discriminator() {
                return this.discriminator;
            }

            @Override // java.lang.annotation.Annotation
            public final boolean equals(Object obj) {
                return (obj instanceof JsonClassDiscriminator) && Intrinsics.areEqual(discriminator(), ((JsonClassDiscriminator) obj).discriminator());
            }

            @Override // java.lang.annotation.Annotation
            public final int hashCode() {
                return this.discriminator.hashCode() ^ 707790692;
            }

            @Override // java.lang.annotation.Annotation
            public final String toString() {
                return "@kotlinx.serialization.json.JsonClassDiscriminator(discriminator=" + this.discriminator + ')';
            }
        }}), new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
            private final /* synthetic */ String discriminator;

            {
                Intrinsics.checkNotNullParameter(discriminator, "discriminator");
                this.discriminator = discriminator;
            }

            @Override // java.lang.annotation.Annotation
            public final /* synthetic */ Class annotationType() {
                return JsonClassDiscriminator.class;
            }

            @Override // kotlinx.serialization.json.JsonClassDiscriminator
            public final /* synthetic */ String discriminator() {
                return this.discriminator;
            }

            @Override // java.lang.annotation.Annotation
            public final boolean equals(Object obj) {
                return (obj instanceof JsonClassDiscriminator) && Intrinsics.areEqual(discriminator(), ((JsonClassDiscriminator) obj).discriminator());
            }

            @Override // java.lang.annotation.Annotation
            public final int hashCode() {
                return this.discriminator.hashCode() ^ 707790692;
            }

            @Override // java.lang.annotation.Annotation
            public final String toString() {
                return "@kotlinx.serialization.json.JsonClassDiscriminator(discriminator=" + this.discriminator + ')';
            }
        }}), new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
            private final /* synthetic */ String discriminator;

            {
                Intrinsics.checkNotNullParameter(discriminator, "discriminator");
                this.discriminator = discriminator;
            }

            @Override // java.lang.annotation.Annotation
            public final /* synthetic */ Class annotationType() {
                return JsonClassDiscriminator.class;
            }

            @Override // kotlinx.serialization.json.JsonClassDiscriminator
            public final /* synthetic */ String discriminator() {
                return this.discriminator;
            }

            @Override // java.lang.annotation.Annotation
            public final boolean equals(Object obj) {
                return (obj instanceof JsonClassDiscriminator) && Intrinsics.areEqual(discriminator(), ((JsonClassDiscriminator) obj).discriminator());
            }

            @Override // java.lang.annotation.Annotation
            public final int hashCode() {
                return this.discriminator.hashCode() ^ 707790692;
            }

            @Override // java.lang.annotation.Annotation
            public final String toString() {
                return "@kotlinx.serialization.json.JsonClassDiscriminator(discriminator=" + this.discriminator + ')';
            }
        }}), new SealedClassSerializer("org.ton.hashmap.HashMapE", Reflection.getOrCreateKotlinClass(HashMapE.class), new KClass[]{Reflection.getOrCreateKotlinClass(HmeEmpty.class), Reflection.getOrCreateKotlinClass(HmeRoot.class)}, new KSerializer[]{HmeEmpty.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), HmeRoot.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
            private final /* synthetic */ String discriminator;

            {
                Intrinsics.checkNotNullParameter(discriminator, "discriminator");
                this.discriminator = discriminator;
            }

            @Override // java.lang.annotation.Annotation
            public final /* synthetic */ Class annotationType() {
                return JsonClassDiscriminator.class;
            }

            @Override // kotlinx.serialization.json.JsonClassDiscriminator
            public final /* synthetic */ String discriminator() {
                return this.discriminator;
            }

            @Override // java.lang.annotation.Annotation
            public final boolean equals(Object obj) {
                return (obj instanceof JsonClassDiscriminator) && Intrinsics.areEqual(discriminator(), ((JsonClassDiscriminator) obj).discriminator());
            }

            @Override // java.lang.annotation.Annotation
            public final int hashCode() {
                return this.discriminator.hashCode() ^ 707790692;
            }

            @Override // java.lang.annotation.Annotation
            public final String toString() {
                return "@kotlinx.serialization.json.JsonClassDiscriminator(discriminator=" + this.discriminator + ')';
            }
        }})};
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("");
        open.field("split_depth", this.splitDepth);
        open.field("special", this.special);
        open.field("code", this.code);
        open.field("data", this.data);
        open.field("library", this.library);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
