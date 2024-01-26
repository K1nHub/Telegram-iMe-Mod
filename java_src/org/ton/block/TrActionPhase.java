package org.ton.block;

import java.lang.annotation.Annotation;
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
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.block.Just;
import org.ton.block.Nothing;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: TrActionPhase.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TrActionPhase implements TlbObject {
    private static final KSerializer<Object>[] $childSerializers;
    public static final Companion Companion = new Companion(null);
    private final BitString actionListHash;
    private final int msgsCreated;
    private final boolean noFunds;
    private final Maybe<Integer> resultArg;
    private final int resultCode;
    private final int skippedActions;
    private final int specActions;
    private final AccStatusChange statusChange;
    private final boolean success;
    private final int totActions;
    private final StorageUsedShort totMsgSize;
    private final Maybe<Coins> totalActionFees;
    private final Maybe<Coins> totalFwdFees;
    private final boolean valid;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TrActionPhase) {
            TrActionPhase trActionPhase = (TrActionPhase) obj;
            return this.success == trActionPhase.success && this.valid == trActionPhase.valid && this.noFunds == trActionPhase.noFunds && this.statusChange == trActionPhase.statusChange && Intrinsics.areEqual(this.totalFwdFees, trActionPhase.totalFwdFees) && Intrinsics.areEqual(this.totalActionFees, trActionPhase.totalActionFees) && this.resultCode == trActionPhase.resultCode && Intrinsics.areEqual(this.resultArg, trActionPhase.resultArg) && this.totActions == trActionPhase.totActions && this.specActions == trActionPhase.specActions && this.skippedActions == trActionPhase.skippedActions && this.msgsCreated == trActionPhase.msgsCreated && Intrinsics.areEqual(this.actionListHash, trActionPhase.actionListHash) && Intrinsics.areEqual(this.totMsgSize, trActionPhase.totMsgSize);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    public int hashCode() {
        boolean z = this.success;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        ?? r2 = this.valid;
        int i2 = r2;
        if (r2 != 0) {
            i2 = 1;
        }
        int i3 = (i + i2) * 31;
        boolean z2 = this.noFunds;
        return ((((((((((((((((((((((i3 + (z2 ? 1 : z2 ? 1 : 0)) * 31) + this.statusChange.hashCode()) * 31) + this.totalFwdFees.hashCode()) * 31) + this.totalActionFees.hashCode()) * 31) + this.resultCode) * 31) + this.resultArg.hashCode()) * 31) + this.totActions) * 31) + this.specActions) * 31) + this.skippedActions) * 31) + this.msgsCreated) * 31) + this.actionListHash.hashCode()) * 31) + this.totMsgSize.hashCode();
    }

    public /* synthetic */ TrActionPhase(int i, boolean z, boolean z2, boolean z3, AccStatusChange accStatusChange, Maybe maybe, Maybe maybe2, int i2, Maybe maybe3, int i3, int i4, int i5, int i6, BitString bitString, StorageUsedShort storageUsedShort, SerializationConstructorMarker serializationConstructorMarker) {
        if (16383 != (i & 16383)) {
            PluginExceptionsKt.throwMissingFieldException(i, 16383, TrActionPhase$$serializer.INSTANCE.getDescriptor());
        }
        this.success = z;
        this.valid = z2;
        this.noFunds = z3;
        this.statusChange = accStatusChange;
        this.totalFwdFees = maybe;
        this.totalActionFees = maybe2;
        this.resultCode = i2;
        this.resultArg = maybe3;
        this.totActions = i3;
        this.specActions = i4;
        this.skippedActions = i5;
        this.msgsCreated = i6;
        this.actionListHash = bitString;
        this.totMsgSize = storageUsedShort;
        if (bitString.getSize() == 256) {
            return;
        }
        throw new IllegalArgumentException(("expected actionListHash.size == 256, actual: " + bitString.getSize()).toString());
    }

    public TrActionPhase(boolean z, boolean z2, boolean z3, AccStatusChange statusChange, Maybe<Coins> totalFwdFees, Maybe<Coins> totalActionFees, int i, Maybe<Integer> resultArg, int i2, int i3, int i4, int i5, BitString actionListHash, StorageUsedShort totMsgSize) {
        Intrinsics.checkNotNullParameter(statusChange, "statusChange");
        Intrinsics.checkNotNullParameter(totalFwdFees, "totalFwdFees");
        Intrinsics.checkNotNullParameter(totalActionFees, "totalActionFees");
        Intrinsics.checkNotNullParameter(resultArg, "resultArg");
        Intrinsics.checkNotNullParameter(actionListHash, "actionListHash");
        Intrinsics.checkNotNullParameter(totMsgSize, "totMsgSize");
        this.success = z;
        this.valid = z2;
        this.noFunds = z3;
        this.statusChange = statusChange;
        this.totalFwdFees = totalFwdFees;
        this.totalActionFees = totalActionFees;
        this.resultCode = i;
        this.resultArg = resultArg;
        this.totActions = i2;
        this.specActions = i3;
        this.skippedActions = i4;
        this.msgsCreated = i5;
        this.actionListHash = actionListHash;
        this.totMsgSize = totMsgSize;
        if (actionListHash.getSize() == 256) {
            return;
        }
        throw new IllegalArgumentException(("expected actionListHash.size == 256, actual: " + actionListHash.getSize()).toString());
    }

    public static final /* synthetic */ void write$Self(TrActionPhase trActionPhase, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeBooleanElement(serialDescriptor, 0, trActionPhase.success);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 1, trActionPhase.valid);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 2, trActionPhase.noFunds);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], trActionPhase.statusChange);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, kSerializerArr[4], trActionPhase.totalFwdFees);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 5, kSerializerArr[5], trActionPhase.totalActionFees);
        compositeEncoder.encodeIntElement(serialDescriptor, 6, trActionPhase.resultCode);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 7, kSerializerArr[7], trActionPhase.resultArg);
        compositeEncoder.encodeIntElement(serialDescriptor, 8, trActionPhase.totActions);
        compositeEncoder.encodeIntElement(serialDescriptor, 9, trActionPhase.specActions);
        compositeEncoder.encodeIntElement(serialDescriptor, 10, trActionPhase.skippedActions);
        compositeEncoder.encodeIntElement(serialDescriptor, 11, trActionPhase.msgsCreated);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 12, FiftHexBitStringSerializer.INSTANCE, trActionPhase.actionListHash);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 13, StorageUsedShort$$serializer.INSTANCE, trActionPhase.totMsgSize);
    }

    public final boolean getSuccess() {
        return this.success;
    }

    public final boolean getValid() {
        return this.valid;
    }

    public final boolean getNoFunds() {
        return this.noFunds;
    }

    public final AccStatusChange getStatusChange() {
        return this.statusChange;
    }

    public final Maybe<Coins> getTotalFwdFees() {
        return this.totalFwdFees;
    }

    public final Maybe<Coins> getTotalActionFees() {
        return this.totalActionFees;
    }

    public final int getResultCode() {
        return this.resultCode;
    }

    public final Maybe<Integer> getResultArg() {
        return this.resultArg;
    }

    public final int getTotActions() {
        return this.totActions;
    }

    public final int getSpecActions() {
        return this.specActions;
    }

    public final int getSkippedActions() {
        return this.skippedActions;
    }

    public final int getMsgsCreated() {
        return this.msgsCreated;
    }

    public final BitString getActionListHash() {
        return this.actionListHash;
    }

    public final StorageUsedShort getTotMsgSize() {
        return this.totMsgSize;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: TrActionPhase.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<TrActionPhase> {
        private final /* synthetic */ TrActionPhaseTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public TrActionPhase loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public TrActionPhase loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, TrActionPhase value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<TrActionPhase> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = TrActionPhaseTlbConstructor.INSTANCE;
        }

        public final KSerializer<TrActionPhase> serializer() {
            return TrActionPhase$$serializer.INSTANCE;
        }
    }

    static {
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Maybe.class);
        KClass[] kClassArr = {Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)};
        Just.Companion companion = Just.Companion;
        Nothing.Companion companion2 = Nothing.Companion;
        $childSerializers = new KSerializer[]{null, null, null, AccStatusChange.Companion.serializer(), new SealedClassSerializer("org.ton.block.Maybe", orCreateKotlinClass, kClassArr, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.TrActionPhase$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
        }}), new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.TrActionPhase$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
        }}), null, new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.TrActionPhase$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
        }}), null, null, null, null, null, null};
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("tr_phase_action");
        open.field("success", Boolean.valueOf(this.success));
        open.field("valid", Boolean.valueOf(this.valid));
        open.field("no_funds", Boolean.valueOf(this.noFunds));
        open.field("status_change", this.statusChange);
        open.field("total_fwd_fees", this.totalFwdFees);
        open.field("total_action_fees", this.totalActionFees);
        open.field("result_code", Integer.valueOf(this.resultCode));
        open.field("result_arg", this.resultArg);
        open.field("tot_actions", Integer.valueOf(this.totActions));
        open.field("spec_actions", Integer.valueOf(this.specActions));
        open.field("skipped_actions", Integer.valueOf(this.skippedActions));
        open.field("msgs_created", Integer.valueOf(this.msgsCreated));
        open.field("action_list_hash", this.actionListHash);
        open.field("tot_msg_size", this.totMsgSize);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
