package wallet.core.jni.proto;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import wallet.core.jni.proto.Common;
/* loaded from: classes6.dex */
public final class Nervos {

    /* loaded from: classes6.dex */
    public interface CellDepOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getDepType();

        ByteString getDepTypeBytes();

        OutPoint getOutPoint();

        boolean hasOutPoint();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface CellOrBuilder extends MessageLiteOrBuilder {
        ByteString getBlockHash();

        long getBlockNumber();

        long getCapacity();

        ByteString getData();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getInputType();

        Script getLock();

        OutPoint getOutPoint();

        ByteString getOutputType();

        long getSince();

        Script getType();

        boolean hasLock();

        boolean hasOutPoint();

        boolean hasType();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface CellOutputOrBuilder extends MessageLiteOrBuilder {
        long getCapacity();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Script getLock();

        Script getType();

        boolean hasLock();

        boolean hasType();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface DaoDepositOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        String getChangeAddress();

        ByteString getChangeAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getToAddress();

        ByteString getToAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface DaoWithdrawPhase1OrBuilder extends MessageLiteOrBuilder {
        String getChangeAddress();

        ByteString getChangeAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Cell getDepositCell();

        boolean hasDepositCell();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface DaoWithdrawPhase2OrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Cell getDepositCell();

        Cell getWithdrawingCell();

        boolean hasDepositCell();

        boolean hasWithdrawingCell();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface NativeTransferOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        String getChangeAddress();

        ByteString getChangeAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getToAddress();

        ByteString getToAddressBytes();

        boolean getUseMaxAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface OutPointOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        int getIndex();

        ByteString getTxHash();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface ScriptOrBuilder extends MessageLiteOrBuilder {
        ByteString getArgs();

        ByteString getCodeHash();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getHashType();

        ByteString getHashTypeBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        long getByteFee();

        Cell getCell(int index);

        int getCellCount();

        List<Cell> getCellList();

        DaoDeposit getDaoDeposit();

        DaoWithdrawPhase1 getDaoWithdrawPhase1();

        DaoWithdrawPhase2 getDaoWithdrawPhase2();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        NativeTransfer getNativeTransfer();

        SigningInput.OperationOneofCase getOperationOneofCase();

        TransactionPlan getPlan();

        ByteString getPrivateKey(int index);

        int getPrivateKeyCount();

        List<ByteString> getPrivateKeyList();

        SudtTransfer getSudtTransfer();

        boolean hasDaoDeposit();

        boolean hasDaoWithdrawPhase1();

        boolean hasDaoWithdrawPhase2();

        boolean hasNativeTransfer();

        boolean hasPlan();

        boolean hasSudtTransfer();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Common.SigningError getError();

        int getErrorValue();

        String getTransactionId();

        ByteString getTransactionIdBytes();

        String getTransactionJson();

        ByteString getTransactionJsonBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SudtTransferOrBuilder extends MessageLiteOrBuilder {
        String getAmount();

        ByteString getAmountBytes();

        String getChangeAddress();

        ByteString getChangeAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getSudtAddress();

        String getToAddress();

        ByteString getToAddressBytes();

        boolean getUseMaxAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransactionPlanOrBuilder extends MessageLiteOrBuilder {
        CellDep getCellDeps(int index);

        int getCellDepsCount();

        List<CellDep> getCellDepsList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Common.SigningError getError();

        int getErrorValue();

        ByteString getHeaderDeps(int index);

        int getHeaderDepsCount();

        List<ByteString> getHeaderDepsList();

        CellOutput getOutputs(int index);

        int getOutputsCount();

        ByteString getOutputsData(int index);

        int getOutputsDataCount();

        List<ByteString> getOutputsDataList();

        List<CellOutput> getOutputsList();

        Cell getSelectedCells(int index);

        int getSelectedCellsCount();

        List<Cell> getSelectedCellsList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Nervos() {
    }

    /* loaded from: classes6.dex */
    public static final class TransactionPlan extends GeneratedMessageLite<TransactionPlan, Builder> implements TransactionPlanOrBuilder {
        public static final int CELL_DEPS_FIELD_NUMBER = 1;
        private static final TransactionPlan DEFAULT_INSTANCE;
        public static final int ERROR_FIELD_NUMBER = 6;
        public static final int HEADER_DEPS_FIELD_NUMBER = 2;
        public static final int OUTPUTS_DATA_FIELD_NUMBER = 5;
        public static final int OUTPUTS_FIELD_NUMBER = 4;
        private static volatile Parser<TransactionPlan> PARSER = null;
        public static final int SELECTED_CELLS_FIELD_NUMBER = 3;
        private int error_;
        private Internal.ProtobufList<CellDep> cellDeps_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<ByteString> headerDeps_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<Cell> selectedCells_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<CellOutput> outputs_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<ByteString> outputsData_ = GeneratedMessageLite.emptyProtobufList();

        private TransactionPlan() {
        }

        @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
        public List<CellDep> getCellDepsList() {
            return this.cellDeps_;
        }

        public List<? extends CellDepOrBuilder> getCellDepsOrBuilderList() {
            return this.cellDeps_;
        }

        @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
        public int getCellDepsCount() {
            return this.cellDeps_.size();
        }

        @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
        public CellDep getCellDeps(int index) {
            return this.cellDeps_.get(index);
        }

        public CellDepOrBuilder getCellDepsOrBuilder(int index) {
            return this.cellDeps_.get(index);
        }

        private void ensureCellDepsIsMutable() {
            Internal.ProtobufList<CellDep> protobufList = this.cellDeps_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.cellDeps_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCellDeps(int index, CellDep value) {
            value.getClass();
            ensureCellDepsIsMutable();
            this.cellDeps_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addCellDeps(CellDep value) {
            value.getClass();
            ensureCellDepsIsMutable();
            this.cellDeps_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addCellDeps(int index, CellDep value) {
            value.getClass();
            ensureCellDepsIsMutable();
            this.cellDeps_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllCellDeps(Iterable<? extends CellDep> values) {
            ensureCellDepsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.cellDeps_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCellDeps() {
            this.cellDeps_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeCellDeps(int index) {
            ensureCellDepsIsMutable();
            this.cellDeps_.remove(index);
        }

        @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
        public List<ByteString> getHeaderDepsList() {
            return this.headerDeps_;
        }

        @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
        public int getHeaderDepsCount() {
            return this.headerDeps_.size();
        }

        @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
        public ByteString getHeaderDeps(int index) {
            return this.headerDeps_.get(index);
        }

        private void ensureHeaderDepsIsMutable() {
            Internal.ProtobufList<ByteString> protobufList = this.headerDeps_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.headerDeps_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHeaderDeps(int index, ByteString value) {
            value.getClass();
            ensureHeaderDepsIsMutable();
            this.headerDeps_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addHeaderDeps(ByteString value) {
            value.getClass();
            ensureHeaderDepsIsMutable();
            this.headerDeps_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllHeaderDeps(Iterable<? extends ByteString> values) {
            ensureHeaderDepsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.headerDeps_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearHeaderDeps() {
            this.headerDeps_ = GeneratedMessageLite.emptyProtobufList();
        }

        @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
        public List<Cell> getSelectedCellsList() {
            return this.selectedCells_;
        }

        public List<? extends CellOrBuilder> getSelectedCellsOrBuilderList() {
            return this.selectedCells_;
        }

        @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
        public int getSelectedCellsCount() {
            return this.selectedCells_.size();
        }

        @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
        public Cell getSelectedCells(int index) {
            return this.selectedCells_.get(index);
        }

        public CellOrBuilder getSelectedCellsOrBuilder(int index) {
            return this.selectedCells_.get(index);
        }

        private void ensureSelectedCellsIsMutable() {
            Internal.ProtobufList<Cell> protobufList = this.selectedCells_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.selectedCells_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSelectedCells(int index, Cell value) {
            value.getClass();
            ensureSelectedCellsIsMutable();
            this.selectedCells_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addSelectedCells(Cell value) {
            value.getClass();
            ensureSelectedCellsIsMutable();
            this.selectedCells_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addSelectedCells(int index, Cell value) {
            value.getClass();
            ensureSelectedCellsIsMutable();
            this.selectedCells_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllSelectedCells(Iterable<? extends Cell> values) {
            ensureSelectedCellsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.selectedCells_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSelectedCells() {
            this.selectedCells_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeSelectedCells(int index) {
            ensureSelectedCellsIsMutable();
            this.selectedCells_.remove(index);
        }

        @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
        public List<CellOutput> getOutputsList() {
            return this.outputs_;
        }

        public List<? extends CellOutputOrBuilder> getOutputsOrBuilderList() {
            return this.outputs_;
        }

        @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
        public int getOutputsCount() {
            return this.outputs_.size();
        }

        @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
        public CellOutput getOutputs(int index) {
            return this.outputs_.get(index);
        }

        public CellOutputOrBuilder getOutputsOrBuilder(int index) {
            return this.outputs_.get(index);
        }

        private void ensureOutputsIsMutable() {
            Internal.ProtobufList<CellOutput> protobufList = this.outputs_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.outputs_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOutputs(int index, CellOutput value) {
            value.getClass();
            ensureOutputsIsMutable();
            this.outputs_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOutputs(CellOutput value) {
            value.getClass();
            ensureOutputsIsMutable();
            this.outputs_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOutputs(int index, CellOutput value) {
            value.getClass();
            ensureOutputsIsMutable();
            this.outputs_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllOutputs(Iterable<? extends CellOutput> values) {
            ensureOutputsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.outputs_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOutputs() {
            this.outputs_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeOutputs(int index) {
            ensureOutputsIsMutable();
            this.outputs_.remove(index);
        }

        @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
        public List<ByteString> getOutputsDataList() {
            return this.outputsData_;
        }

        @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
        public int getOutputsDataCount() {
            return this.outputsData_.size();
        }

        @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
        public ByteString getOutputsData(int index) {
            return this.outputsData_.get(index);
        }

        private void ensureOutputsDataIsMutable() {
            Internal.ProtobufList<ByteString> protobufList = this.outputsData_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.outputsData_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOutputsData(int index, ByteString value) {
            value.getClass();
            ensureOutputsDataIsMutable();
            this.outputsData_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOutputsData(ByteString value) {
            value.getClass();
            ensureOutputsDataIsMutable();
            this.outputsData_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllOutputsData(Iterable<? extends ByteString> values) {
            ensureOutputsDataIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.outputsData_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOutputsData() {
            this.outputsData_ = GeneratedMessageLite.emptyProtobufList();
        }

        @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
        public int getErrorValue() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
        public Common.SigningError getError() {
            Common.SigningError forNumber = Common.SigningError.forNumber(this.error_);
            return forNumber == null ? Common.SigningError.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setErrorValue(int value) {
            this.error_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setError(Common.SigningError value) {
            this.error_ = value.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearError() {
            this.error_ = 0;
        }

        public static TransactionPlan parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionPlan parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionPlan parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionPlan parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionPlan parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionPlan parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionPlan parseFrom(InputStream input) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionPlan parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionPlan parseDelimitedFrom(InputStream input) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionPlan parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionPlan parseFrom(CodedInputStream input) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionPlan parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransactionPlan prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionPlan, Builder> implements TransactionPlanOrBuilder {
            /* synthetic */ Builder(C67331 c67331) {
                this();
            }

            private Builder() {
                super(TransactionPlan.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
            public List<CellDep> getCellDepsList() {
                return Collections.unmodifiableList(((TransactionPlan) this.instance).getCellDepsList());
            }

            @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
            public int getCellDepsCount() {
                return ((TransactionPlan) this.instance).getCellDepsCount();
            }

            @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
            public CellDep getCellDeps(int index) {
                return ((TransactionPlan) this.instance).getCellDeps(index);
            }

            public Builder setCellDeps(int index, CellDep value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setCellDeps(index, value);
                return this;
            }

            public Builder setCellDeps(int index, CellDep.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setCellDeps(index, builderForValue.build());
                return this;
            }

            public Builder addCellDeps(CellDep value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addCellDeps(value);
                return this;
            }

            public Builder addCellDeps(int index, CellDep value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addCellDeps(index, value);
                return this;
            }

            public Builder addCellDeps(CellDep.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addCellDeps(builderForValue.build());
                return this;
            }

            public Builder addCellDeps(int index, CellDep.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addCellDeps(index, builderForValue.build());
                return this;
            }

            public Builder addAllCellDeps(Iterable<? extends CellDep> values) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addAllCellDeps(values);
                return this;
            }

            public Builder clearCellDeps() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearCellDeps();
                return this;
            }

            public Builder removeCellDeps(int index) {
                copyOnWrite();
                ((TransactionPlan) this.instance).removeCellDeps(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
            public List<ByteString> getHeaderDepsList() {
                return Collections.unmodifiableList(((TransactionPlan) this.instance).getHeaderDepsList());
            }

            @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
            public int getHeaderDepsCount() {
                return ((TransactionPlan) this.instance).getHeaderDepsCount();
            }

            @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
            public ByteString getHeaderDeps(int index) {
                return ((TransactionPlan) this.instance).getHeaderDeps(index);
            }

            public Builder setHeaderDeps(int index, ByteString value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setHeaderDeps(index, value);
                return this;
            }

            public Builder addHeaderDeps(ByteString value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addHeaderDeps(value);
                return this;
            }

            public Builder addAllHeaderDeps(Iterable<? extends ByteString> values) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addAllHeaderDeps(values);
                return this;
            }

            public Builder clearHeaderDeps() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearHeaderDeps();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
            public List<Cell> getSelectedCellsList() {
                return Collections.unmodifiableList(((TransactionPlan) this.instance).getSelectedCellsList());
            }

            @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
            public int getSelectedCellsCount() {
                return ((TransactionPlan) this.instance).getSelectedCellsCount();
            }

            @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
            public Cell getSelectedCells(int index) {
                return ((TransactionPlan) this.instance).getSelectedCells(index);
            }

            public Builder setSelectedCells(int index, Cell value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setSelectedCells(index, value);
                return this;
            }

            public Builder setSelectedCells(int index, Cell.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setSelectedCells(index, builderForValue.build());
                return this;
            }

            public Builder addSelectedCells(Cell value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addSelectedCells(value);
                return this;
            }

            public Builder addSelectedCells(int index, Cell value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addSelectedCells(index, value);
                return this;
            }

            public Builder addSelectedCells(Cell.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addSelectedCells(builderForValue.build());
                return this;
            }

            public Builder addSelectedCells(int index, Cell.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addSelectedCells(index, builderForValue.build());
                return this;
            }

            public Builder addAllSelectedCells(Iterable<? extends Cell> values) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addAllSelectedCells(values);
                return this;
            }

            public Builder clearSelectedCells() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearSelectedCells();
                return this;
            }

            public Builder removeSelectedCells(int index) {
                copyOnWrite();
                ((TransactionPlan) this.instance).removeSelectedCells(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
            public List<CellOutput> getOutputsList() {
                return Collections.unmodifiableList(((TransactionPlan) this.instance).getOutputsList());
            }

            @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
            public int getOutputsCount() {
                return ((TransactionPlan) this.instance).getOutputsCount();
            }

            @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
            public CellOutput getOutputs(int index) {
                return ((TransactionPlan) this.instance).getOutputs(index);
            }

            public Builder setOutputs(int index, CellOutput value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setOutputs(index, value);
                return this;
            }

            public Builder setOutputs(int index, CellOutput.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setOutputs(index, builderForValue.build());
                return this;
            }

            public Builder addOutputs(CellOutput value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addOutputs(value);
                return this;
            }

            public Builder addOutputs(int index, CellOutput value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addOutputs(index, value);
                return this;
            }

            public Builder addOutputs(CellOutput.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addOutputs(builderForValue.build());
                return this;
            }

            public Builder addOutputs(int index, CellOutput.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addOutputs(index, builderForValue.build());
                return this;
            }

            public Builder addAllOutputs(Iterable<? extends CellOutput> values) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addAllOutputs(values);
                return this;
            }

            public Builder clearOutputs() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearOutputs();
                return this;
            }

            public Builder removeOutputs(int index) {
                copyOnWrite();
                ((TransactionPlan) this.instance).removeOutputs(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
            public List<ByteString> getOutputsDataList() {
                return Collections.unmodifiableList(((TransactionPlan) this.instance).getOutputsDataList());
            }

            @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
            public int getOutputsDataCount() {
                return ((TransactionPlan) this.instance).getOutputsDataCount();
            }

            @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
            public ByteString getOutputsData(int index) {
                return ((TransactionPlan) this.instance).getOutputsData(index);
            }

            public Builder setOutputsData(int index, ByteString value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setOutputsData(index, value);
                return this;
            }

            public Builder addOutputsData(ByteString value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addOutputsData(value);
                return this;
            }

            public Builder addAllOutputsData(Iterable<? extends ByteString> values) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addAllOutputsData(values);
                return this;
            }

            public Builder clearOutputsData() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearOutputsData();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
            public int getErrorValue() {
                return ((TransactionPlan) this.instance).getErrorValue();
            }

            public Builder setErrorValue(int value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setErrorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.TransactionPlanOrBuilder
            public Common.SigningError getError() {
                return ((TransactionPlan) this.instance).getError();
            }

            public Builder setError(Common.SigningError value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setError(value);
                return this;
            }

            public Builder clearError() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearError();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67331.f1808xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionPlan();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0005\u0000\u0001\u001b\u0002\u001c\u0003\u001b\u0004\u001b\u0005\u001c\u0006\f", new Object[]{"cellDeps_", CellDep.class, "headerDeps_", "selectedCells_", Cell.class, "outputs_", CellOutput.class, "outputsData_", "error_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransactionPlan> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransactionPlan.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            TransactionPlan transactionPlan = new TransactionPlan();
            DEFAULT_INSTANCE = transactionPlan;
            GeneratedMessageLite.registerDefaultInstance(TransactionPlan.class, transactionPlan);
        }

        public static TransactionPlan getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransactionPlan> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.Nervos$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C67331 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1808xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1808xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1808xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1808xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1808xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1808xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1808xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1808xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class CellDep extends GeneratedMessageLite<CellDep, Builder> implements CellDepOrBuilder {
        private static final CellDep DEFAULT_INSTANCE;
        public static final int DEP_TYPE_FIELD_NUMBER = 1;
        public static final int OUT_POINT_FIELD_NUMBER = 2;
        private static volatile Parser<CellDep> PARSER;
        private String depType_ = "";
        private OutPoint outPoint_;

        private CellDep() {
        }

        @Override // wallet.core.jni.proto.Nervos.CellDepOrBuilder
        public String getDepType() {
            return this.depType_;
        }

        @Override // wallet.core.jni.proto.Nervos.CellDepOrBuilder
        public ByteString getDepTypeBytes() {
            return ByteString.copyFromUtf8(this.depType_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDepType(String value) {
            value.getClass();
            this.depType_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDepType() {
            this.depType_ = getDefaultInstance().getDepType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDepTypeBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.depType_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Nervos.CellDepOrBuilder
        public boolean hasOutPoint() {
            return this.outPoint_ != null;
        }

        @Override // wallet.core.jni.proto.Nervos.CellDepOrBuilder
        public OutPoint getOutPoint() {
            OutPoint outPoint = this.outPoint_;
            return outPoint == null ? OutPoint.getDefaultInstance() : outPoint;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOutPoint(OutPoint value) {
            value.getClass();
            this.outPoint_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOutPoint(OutPoint value) {
            value.getClass();
            OutPoint outPoint = this.outPoint_;
            if (outPoint != null && outPoint != OutPoint.getDefaultInstance()) {
                this.outPoint_ = OutPoint.newBuilder(this.outPoint_).mergeFrom((OutPoint.Builder) value).buildPartial();
            } else {
                this.outPoint_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOutPoint() {
            this.outPoint_ = null;
        }

        public static CellDep parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (CellDep) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CellDep parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CellDep) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CellDep parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (CellDep) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CellDep parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CellDep) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CellDep parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (CellDep) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CellDep parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CellDep) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CellDep parseFrom(InputStream input) throws IOException {
            return (CellDep) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CellDep parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CellDep) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CellDep parseDelimitedFrom(InputStream input) throws IOException {
            return (CellDep) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static CellDep parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CellDep) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CellDep parseFrom(CodedInputStream input) throws IOException {
            return (CellDep) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CellDep parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CellDep) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(CellDep prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<CellDep, Builder> implements CellDepOrBuilder {
            /* synthetic */ Builder(C67331 c67331) {
                this();
            }

            private Builder() {
                super(CellDep.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nervos.CellDepOrBuilder
            public String getDepType() {
                return ((CellDep) this.instance).getDepType();
            }

            @Override // wallet.core.jni.proto.Nervos.CellDepOrBuilder
            public ByteString getDepTypeBytes() {
                return ((CellDep) this.instance).getDepTypeBytes();
            }

            public Builder setDepType(String value) {
                copyOnWrite();
                ((CellDep) this.instance).setDepType(value);
                return this;
            }

            public Builder clearDepType() {
                copyOnWrite();
                ((CellDep) this.instance).clearDepType();
                return this;
            }

            public Builder setDepTypeBytes(ByteString value) {
                copyOnWrite();
                ((CellDep) this.instance).setDepTypeBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.CellDepOrBuilder
            public boolean hasOutPoint() {
                return ((CellDep) this.instance).hasOutPoint();
            }

            @Override // wallet.core.jni.proto.Nervos.CellDepOrBuilder
            public OutPoint getOutPoint() {
                return ((CellDep) this.instance).getOutPoint();
            }

            public Builder setOutPoint(OutPoint value) {
                copyOnWrite();
                ((CellDep) this.instance).setOutPoint(value);
                return this;
            }

            public Builder setOutPoint(OutPoint.Builder builderForValue) {
                copyOnWrite();
                ((CellDep) this.instance).setOutPoint(builderForValue.build());
                return this;
            }

            public Builder mergeOutPoint(OutPoint value) {
                copyOnWrite();
                ((CellDep) this.instance).mergeOutPoint(value);
                return this;
            }

            public Builder clearOutPoint() {
                copyOnWrite();
                ((CellDep) this.instance).clearOutPoint();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67331.f1808xa1df5c61[method.ordinal()]) {
                case 1:
                    return new CellDep();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"depType_", "outPoint_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<CellDep> parser = PARSER;
                    if (parser == null) {
                        synchronized (CellDep.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            CellDep cellDep = new CellDep();
            DEFAULT_INSTANCE = cellDep;
            GeneratedMessageLite.registerDefaultInstance(CellDep.class, cellDep);
        }

        public static CellDep getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CellDep> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class OutPoint extends GeneratedMessageLite<OutPoint, Builder> implements OutPointOrBuilder {
        private static final OutPoint DEFAULT_INSTANCE;
        public static final int INDEX_FIELD_NUMBER = 2;
        private static volatile Parser<OutPoint> PARSER = null;
        public static final int TX_HASH_FIELD_NUMBER = 1;
        private int index_;
        private ByteString txHash_ = ByteString.EMPTY;

        private OutPoint() {
        }

        @Override // wallet.core.jni.proto.Nervos.OutPointOrBuilder
        public ByteString getTxHash() {
            return this.txHash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTxHash(ByteString value) {
            value.getClass();
            this.txHash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTxHash() {
            this.txHash_ = getDefaultInstance().getTxHash();
        }

        @Override // wallet.core.jni.proto.Nervos.OutPointOrBuilder
        public int getIndex() {
            return this.index_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIndex(int value) {
            this.index_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearIndex() {
            this.index_ = 0;
        }

        public static OutPoint parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OutPoint parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OutPoint parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OutPoint parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OutPoint parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OutPoint parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OutPoint parseFrom(InputStream input) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OutPoint parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OutPoint parseDelimitedFrom(InputStream input) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static OutPoint parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OutPoint parseFrom(CodedInputStream input) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OutPoint parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(OutPoint prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<OutPoint, Builder> implements OutPointOrBuilder {
            /* synthetic */ Builder(C67331 c67331) {
                this();
            }

            private Builder() {
                super(OutPoint.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nervos.OutPointOrBuilder
            public ByteString getTxHash() {
                return ((OutPoint) this.instance).getTxHash();
            }

            public Builder setTxHash(ByteString value) {
                copyOnWrite();
                ((OutPoint) this.instance).setTxHash(value);
                return this;
            }

            public Builder clearTxHash() {
                copyOnWrite();
                ((OutPoint) this.instance).clearTxHash();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.OutPointOrBuilder
            public int getIndex() {
                return ((OutPoint) this.instance).getIndex();
            }

            public Builder setIndex(int value) {
                copyOnWrite();
                ((OutPoint) this.instance).setIndex(value);
                return this;
            }

            public Builder clearIndex() {
                copyOnWrite();
                ((OutPoint) this.instance).clearIndex();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67331.f1808xa1df5c61[method.ordinal()]) {
                case 1:
                    return new OutPoint();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\u000b", new Object[]{"txHash_", "index_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<OutPoint> parser = PARSER;
                    if (parser == null) {
                        synchronized (OutPoint.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            OutPoint outPoint = new OutPoint();
            DEFAULT_INSTANCE = outPoint;
            GeneratedMessageLite.registerDefaultInstance(OutPoint.class, outPoint);
        }

        public static OutPoint getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<OutPoint> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class CellOutput extends GeneratedMessageLite<CellOutput, Builder> implements CellOutputOrBuilder {
        public static final int CAPACITY_FIELD_NUMBER = 1;
        private static final CellOutput DEFAULT_INSTANCE;
        public static final int LOCK_FIELD_NUMBER = 2;
        private static volatile Parser<CellOutput> PARSER = null;
        public static final int TYPE_FIELD_NUMBER = 3;
        private long capacity_;
        private Script lock_;
        private Script type_;

        private CellOutput() {
        }

        @Override // wallet.core.jni.proto.Nervos.CellOutputOrBuilder
        public long getCapacity() {
            return this.capacity_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCapacity(long value) {
            this.capacity_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCapacity() {
            this.capacity_ = 0L;
        }

        @Override // wallet.core.jni.proto.Nervos.CellOutputOrBuilder
        public boolean hasLock() {
            return this.lock_ != null;
        }

        @Override // wallet.core.jni.proto.Nervos.CellOutputOrBuilder
        public Script getLock() {
            Script script = this.lock_;
            return script == null ? Script.getDefaultInstance() : script;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLock(Script value) {
            value.getClass();
            this.lock_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeLock(Script value) {
            value.getClass();
            Script script = this.lock_;
            if (script != null && script != Script.getDefaultInstance()) {
                this.lock_ = Script.newBuilder(this.lock_).mergeFrom((Script.Builder) value).buildPartial();
            } else {
                this.lock_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLock() {
            this.lock_ = null;
        }

        @Override // wallet.core.jni.proto.Nervos.CellOutputOrBuilder
        public boolean hasType() {
            return this.type_ != null;
        }

        @Override // wallet.core.jni.proto.Nervos.CellOutputOrBuilder
        public Script getType() {
            Script script = this.type_;
            return script == null ? Script.getDefaultInstance() : script;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setType(Script value) {
            value.getClass();
            this.type_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeType(Script value) {
            value.getClass();
            Script script = this.type_;
            if (script != null && script != Script.getDefaultInstance()) {
                this.type_ = Script.newBuilder(this.type_).mergeFrom((Script.Builder) value).buildPartial();
            } else {
                this.type_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearType() {
            this.type_ = null;
        }

        public static CellOutput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (CellOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CellOutput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CellOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CellOutput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (CellOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CellOutput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CellOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CellOutput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (CellOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CellOutput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CellOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CellOutput parseFrom(InputStream input) throws IOException {
            return (CellOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CellOutput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CellOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CellOutput parseDelimitedFrom(InputStream input) throws IOException {
            return (CellOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static CellOutput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CellOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CellOutput parseFrom(CodedInputStream input) throws IOException {
            return (CellOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CellOutput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CellOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(CellOutput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<CellOutput, Builder> implements CellOutputOrBuilder {
            /* synthetic */ Builder(C67331 c67331) {
                this();
            }

            private Builder() {
                super(CellOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nervos.CellOutputOrBuilder
            public long getCapacity() {
                return ((CellOutput) this.instance).getCapacity();
            }

            public Builder setCapacity(long value) {
                copyOnWrite();
                ((CellOutput) this.instance).setCapacity(value);
                return this;
            }

            public Builder clearCapacity() {
                copyOnWrite();
                ((CellOutput) this.instance).clearCapacity();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.CellOutputOrBuilder
            public boolean hasLock() {
                return ((CellOutput) this.instance).hasLock();
            }

            @Override // wallet.core.jni.proto.Nervos.CellOutputOrBuilder
            public Script getLock() {
                return ((CellOutput) this.instance).getLock();
            }

            public Builder setLock(Script value) {
                copyOnWrite();
                ((CellOutput) this.instance).setLock(value);
                return this;
            }

            public Builder setLock(Script.Builder builderForValue) {
                copyOnWrite();
                ((CellOutput) this.instance).setLock(builderForValue.build());
                return this;
            }

            public Builder mergeLock(Script value) {
                copyOnWrite();
                ((CellOutput) this.instance).mergeLock(value);
                return this;
            }

            public Builder clearLock() {
                copyOnWrite();
                ((CellOutput) this.instance).clearLock();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.CellOutputOrBuilder
            public boolean hasType() {
                return ((CellOutput) this.instance).hasType();
            }

            @Override // wallet.core.jni.proto.Nervos.CellOutputOrBuilder
            public Script getType() {
                return ((CellOutput) this.instance).getType();
            }

            public Builder setType(Script value) {
                copyOnWrite();
                ((CellOutput) this.instance).setType(value);
                return this;
            }

            public Builder setType(Script.Builder builderForValue) {
                copyOnWrite();
                ((CellOutput) this.instance).setType(builderForValue.build());
                return this;
            }

            public Builder mergeType(Script value) {
                copyOnWrite();
                ((CellOutput) this.instance).mergeType(value);
                return this;
            }

            public Builder clearType() {
                copyOnWrite();
                ((CellOutput) this.instance).clearType();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67331.f1808xa1df5c61[method.ordinal()]) {
                case 1:
                    return new CellOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0003\u0002\t\u0003\t", new Object[]{"capacity_", "lock_", "type_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<CellOutput> parser = PARSER;
                    if (parser == null) {
                        synchronized (CellOutput.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            CellOutput cellOutput = new CellOutput();
            DEFAULT_INSTANCE = cellOutput;
            GeneratedMessageLite.registerDefaultInstance(CellOutput.class, cellOutput);
        }

        public static CellOutput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CellOutput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class Script extends GeneratedMessageLite<Script, Builder> implements ScriptOrBuilder {
        public static final int ARGS_FIELD_NUMBER = 3;
        public static final int CODE_HASH_FIELD_NUMBER = 1;
        private static final Script DEFAULT_INSTANCE;
        public static final int HASH_TYPE_FIELD_NUMBER = 2;
        private static volatile Parser<Script> PARSER;
        private ByteString args_;
        private ByteString codeHash_;
        private String hashType_;

        private Script() {
            ByteString byteString = ByteString.EMPTY;
            this.codeHash_ = byteString;
            this.hashType_ = "";
            this.args_ = byteString;
        }

        @Override // wallet.core.jni.proto.Nervos.ScriptOrBuilder
        public ByteString getCodeHash() {
            return this.codeHash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCodeHash(ByteString value) {
            value.getClass();
            this.codeHash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCodeHash() {
            this.codeHash_ = getDefaultInstance().getCodeHash();
        }

        @Override // wallet.core.jni.proto.Nervos.ScriptOrBuilder
        public String getHashType() {
            return this.hashType_;
        }

        @Override // wallet.core.jni.proto.Nervos.ScriptOrBuilder
        public ByteString getHashTypeBytes() {
            return ByteString.copyFromUtf8(this.hashType_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHashType(String value) {
            value.getClass();
            this.hashType_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearHashType() {
            this.hashType_ = getDefaultInstance().getHashType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHashTypeBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.hashType_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Nervos.ScriptOrBuilder
        public ByteString getArgs() {
            return this.args_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setArgs(ByteString value) {
            value.getClass();
            this.args_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearArgs() {
            this.args_ = getDefaultInstance().getArgs();
        }

        public static Script parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Script) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Script parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Script) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Script parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Script) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Script parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Script) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Script parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Script) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Script parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Script) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Script parseFrom(InputStream input) throws IOException {
            return (Script) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Script parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Script) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Script parseDelimitedFrom(InputStream input) throws IOException {
            return (Script) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Script parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Script) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Script parseFrom(CodedInputStream input) throws IOException {
            return (Script) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Script parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Script) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Script prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Script, Builder> implements ScriptOrBuilder {
            /* synthetic */ Builder(C67331 c67331) {
                this();
            }

            private Builder() {
                super(Script.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nervos.ScriptOrBuilder
            public ByteString getCodeHash() {
                return ((Script) this.instance).getCodeHash();
            }

            public Builder setCodeHash(ByteString value) {
                copyOnWrite();
                ((Script) this.instance).setCodeHash(value);
                return this;
            }

            public Builder clearCodeHash() {
                copyOnWrite();
                ((Script) this.instance).clearCodeHash();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.ScriptOrBuilder
            public String getHashType() {
                return ((Script) this.instance).getHashType();
            }

            @Override // wallet.core.jni.proto.Nervos.ScriptOrBuilder
            public ByteString getHashTypeBytes() {
                return ((Script) this.instance).getHashTypeBytes();
            }

            public Builder setHashType(String value) {
                copyOnWrite();
                ((Script) this.instance).setHashType(value);
                return this;
            }

            public Builder clearHashType() {
                copyOnWrite();
                ((Script) this.instance).clearHashType();
                return this;
            }

            public Builder setHashTypeBytes(ByteString value) {
                copyOnWrite();
                ((Script) this.instance).setHashTypeBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.ScriptOrBuilder
            public ByteString getArgs() {
                return ((Script) this.instance).getArgs();
            }

            public Builder setArgs(ByteString value) {
                copyOnWrite();
                ((Script) this.instance).setArgs(value);
                return this;
            }

            public Builder clearArgs() {
                copyOnWrite();
                ((Script) this.instance).clearArgs();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67331.f1808xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Script();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002Ȉ\u0003\n", new Object[]{"codeHash_", "hashType_", "args_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Script> parser = PARSER;
                    if (parser == null) {
                        synchronized (Script.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            Script script = new Script();
            DEFAULT_INSTANCE = script;
            GeneratedMessageLite.registerDefaultInstance(Script.class, script);
        }

        public static Script getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Script> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class NativeTransfer extends GeneratedMessageLite<NativeTransfer, Builder> implements NativeTransferOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        public static final int CHANGE_ADDRESS_FIELD_NUMBER = 2;
        private static final NativeTransfer DEFAULT_INSTANCE;
        private static volatile Parser<NativeTransfer> PARSER = null;
        public static final int TO_ADDRESS_FIELD_NUMBER = 1;
        public static final int USE_MAX_AMOUNT_FIELD_NUMBER = 4;
        private long amount_;
        private boolean useMaxAmount_;
        private String toAddress_ = "";
        private String changeAddress_ = "";

        private NativeTransfer() {
        }

        @Override // wallet.core.jni.proto.Nervos.NativeTransferOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.Nervos.NativeTransferOrBuilder
        public ByteString getToAddressBytes() {
            return ByteString.copyFromUtf8(this.toAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToAddress(String value) {
            value.getClass();
            this.toAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearToAddress() {
            this.toAddress_ = getDefaultInstance().getToAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.toAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Nervos.NativeTransferOrBuilder
        public String getChangeAddress() {
            return this.changeAddress_;
        }

        @Override // wallet.core.jni.proto.Nervos.NativeTransferOrBuilder
        public ByteString getChangeAddressBytes() {
            return ByteString.copyFromUtf8(this.changeAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChangeAddress(String value) {
            value.getClass();
            this.changeAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChangeAddress() {
            this.changeAddress_ = getDefaultInstance().getChangeAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChangeAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.changeAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Nervos.NativeTransferOrBuilder
        public long getAmount() {
            return this.amount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(long value) {
            this.amount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = 0L;
        }

        @Override // wallet.core.jni.proto.Nervos.NativeTransferOrBuilder
        public boolean getUseMaxAmount() {
            return this.useMaxAmount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUseMaxAmount(boolean value) {
            this.useMaxAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUseMaxAmount() {
            this.useMaxAmount_ = false;
        }

        public static NativeTransfer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (NativeTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static NativeTransfer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (NativeTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static NativeTransfer parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (NativeTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static NativeTransfer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (NativeTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static NativeTransfer parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (NativeTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static NativeTransfer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (NativeTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static NativeTransfer parseFrom(InputStream input) throws IOException {
            return (NativeTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static NativeTransfer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (NativeTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static NativeTransfer parseDelimitedFrom(InputStream input) throws IOException {
            return (NativeTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static NativeTransfer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (NativeTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static NativeTransfer parseFrom(CodedInputStream input) throws IOException {
            return (NativeTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static NativeTransfer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (NativeTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(NativeTransfer prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<NativeTransfer, Builder> implements NativeTransferOrBuilder {
            /* synthetic */ Builder(C67331 c67331) {
                this();
            }

            private Builder() {
                super(NativeTransfer.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nervos.NativeTransferOrBuilder
            public String getToAddress() {
                return ((NativeTransfer) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.Nervos.NativeTransferOrBuilder
            public ByteString getToAddressBytes() {
                return ((NativeTransfer) this.instance).getToAddressBytes();
            }

            public Builder setToAddress(String value) {
                copyOnWrite();
                ((NativeTransfer) this.instance).setToAddress(value);
                return this;
            }

            public Builder clearToAddress() {
                copyOnWrite();
                ((NativeTransfer) this.instance).clearToAddress();
                return this;
            }

            public Builder setToAddressBytes(ByteString value) {
                copyOnWrite();
                ((NativeTransfer) this.instance).setToAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.NativeTransferOrBuilder
            public String getChangeAddress() {
                return ((NativeTransfer) this.instance).getChangeAddress();
            }

            @Override // wallet.core.jni.proto.Nervos.NativeTransferOrBuilder
            public ByteString getChangeAddressBytes() {
                return ((NativeTransfer) this.instance).getChangeAddressBytes();
            }

            public Builder setChangeAddress(String value) {
                copyOnWrite();
                ((NativeTransfer) this.instance).setChangeAddress(value);
                return this;
            }

            public Builder clearChangeAddress() {
                copyOnWrite();
                ((NativeTransfer) this.instance).clearChangeAddress();
                return this;
            }

            public Builder setChangeAddressBytes(ByteString value) {
                copyOnWrite();
                ((NativeTransfer) this.instance).setChangeAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.NativeTransferOrBuilder
            public long getAmount() {
                return ((NativeTransfer) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((NativeTransfer) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((NativeTransfer) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.NativeTransferOrBuilder
            public boolean getUseMaxAmount() {
                return ((NativeTransfer) this.instance).getUseMaxAmount();
            }

            public Builder setUseMaxAmount(boolean value) {
                copyOnWrite();
                ((NativeTransfer) this.instance).setUseMaxAmount(value);
                return this;
            }

            public Builder clearUseMaxAmount() {
                copyOnWrite();
                ((NativeTransfer) this.instance).clearUseMaxAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67331.f1808xa1df5c61[method.ordinal()]) {
                case 1:
                    return new NativeTransfer();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u0003\u0004\u0007", new Object[]{"toAddress_", "changeAddress_", "amount_", "useMaxAmount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<NativeTransfer> parser = PARSER;
                    if (parser == null) {
                        synchronized (NativeTransfer.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            NativeTransfer nativeTransfer = new NativeTransfer();
            DEFAULT_INSTANCE = nativeTransfer;
            GeneratedMessageLite.registerDefaultInstance(NativeTransfer.class, nativeTransfer);
        }

        public static NativeTransfer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<NativeTransfer> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SudtTransfer extends GeneratedMessageLite<SudtTransfer, Builder> implements SudtTransferOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 4;
        public static final int CHANGE_ADDRESS_FIELD_NUMBER = 2;
        private static final SudtTransfer DEFAULT_INSTANCE;
        private static volatile Parser<SudtTransfer> PARSER = null;
        public static final int SUDT_ADDRESS_FIELD_NUMBER = 3;
        public static final int TO_ADDRESS_FIELD_NUMBER = 1;
        public static final int USE_MAX_AMOUNT_FIELD_NUMBER = 5;
        private boolean useMaxAmount_;
        private String toAddress_ = "";
        private String changeAddress_ = "";
        private ByteString sudtAddress_ = ByteString.EMPTY;
        private String amount_ = "";

        private SudtTransfer() {
        }

        @Override // wallet.core.jni.proto.Nervos.SudtTransferOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.Nervos.SudtTransferOrBuilder
        public ByteString getToAddressBytes() {
            return ByteString.copyFromUtf8(this.toAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToAddress(String value) {
            value.getClass();
            this.toAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearToAddress() {
            this.toAddress_ = getDefaultInstance().getToAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.toAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Nervos.SudtTransferOrBuilder
        public String getChangeAddress() {
            return this.changeAddress_;
        }

        @Override // wallet.core.jni.proto.Nervos.SudtTransferOrBuilder
        public ByteString getChangeAddressBytes() {
            return ByteString.copyFromUtf8(this.changeAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChangeAddress(String value) {
            value.getClass();
            this.changeAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChangeAddress() {
            this.changeAddress_ = getDefaultInstance().getChangeAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChangeAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.changeAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Nervos.SudtTransferOrBuilder
        public ByteString getSudtAddress() {
            return this.sudtAddress_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSudtAddress(ByteString value) {
            value.getClass();
            this.sudtAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSudtAddress() {
            this.sudtAddress_ = getDefaultInstance().getSudtAddress();
        }

        @Override // wallet.core.jni.proto.Nervos.SudtTransferOrBuilder
        public String getAmount() {
            return this.amount_;
        }

        @Override // wallet.core.jni.proto.Nervos.SudtTransferOrBuilder
        public ByteString getAmountBytes() {
            return ByteString.copyFromUtf8(this.amount_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(String value) {
            value.getClass();
            this.amount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = getDefaultInstance().getAmount();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmountBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.amount_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Nervos.SudtTransferOrBuilder
        public boolean getUseMaxAmount() {
            return this.useMaxAmount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUseMaxAmount(boolean value) {
            this.useMaxAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUseMaxAmount() {
            this.useMaxAmount_ = false;
        }

        public static SudtTransfer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (SudtTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SudtTransfer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SudtTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SudtTransfer parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (SudtTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SudtTransfer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SudtTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SudtTransfer parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (SudtTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SudtTransfer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SudtTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SudtTransfer parseFrom(InputStream input) throws IOException {
            return (SudtTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SudtTransfer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SudtTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SudtTransfer parseDelimitedFrom(InputStream input) throws IOException {
            return (SudtTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static SudtTransfer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SudtTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SudtTransfer parseFrom(CodedInputStream input) throws IOException {
            return (SudtTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SudtTransfer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SudtTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(SudtTransfer prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SudtTransfer, Builder> implements SudtTransferOrBuilder {
            /* synthetic */ Builder(C67331 c67331) {
                this();
            }

            private Builder() {
                super(SudtTransfer.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nervos.SudtTransferOrBuilder
            public String getToAddress() {
                return ((SudtTransfer) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.Nervos.SudtTransferOrBuilder
            public ByteString getToAddressBytes() {
                return ((SudtTransfer) this.instance).getToAddressBytes();
            }

            public Builder setToAddress(String value) {
                copyOnWrite();
                ((SudtTransfer) this.instance).setToAddress(value);
                return this;
            }

            public Builder clearToAddress() {
                copyOnWrite();
                ((SudtTransfer) this.instance).clearToAddress();
                return this;
            }

            public Builder setToAddressBytes(ByteString value) {
                copyOnWrite();
                ((SudtTransfer) this.instance).setToAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.SudtTransferOrBuilder
            public String getChangeAddress() {
                return ((SudtTransfer) this.instance).getChangeAddress();
            }

            @Override // wallet.core.jni.proto.Nervos.SudtTransferOrBuilder
            public ByteString getChangeAddressBytes() {
                return ((SudtTransfer) this.instance).getChangeAddressBytes();
            }

            public Builder setChangeAddress(String value) {
                copyOnWrite();
                ((SudtTransfer) this.instance).setChangeAddress(value);
                return this;
            }

            public Builder clearChangeAddress() {
                copyOnWrite();
                ((SudtTransfer) this.instance).clearChangeAddress();
                return this;
            }

            public Builder setChangeAddressBytes(ByteString value) {
                copyOnWrite();
                ((SudtTransfer) this.instance).setChangeAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.SudtTransferOrBuilder
            public ByteString getSudtAddress() {
                return ((SudtTransfer) this.instance).getSudtAddress();
            }

            public Builder setSudtAddress(ByteString value) {
                copyOnWrite();
                ((SudtTransfer) this.instance).setSudtAddress(value);
                return this;
            }

            public Builder clearSudtAddress() {
                copyOnWrite();
                ((SudtTransfer) this.instance).clearSudtAddress();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.SudtTransferOrBuilder
            public String getAmount() {
                return ((SudtTransfer) this.instance).getAmount();
            }

            @Override // wallet.core.jni.proto.Nervos.SudtTransferOrBuilder
            public ByteString getAmountBytes() {
                return ((SudtTransfer) this.instance).getAmountBytes();
            }

            public Builder setAmount(String value) {
                copyOnWrite();
                ((SudtTransfer) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((SudtTransfer) this.instance).clearAmount();
                return this;
            }

            public Builder setAmountBytes(ByteString value) {
                copyOnWrite();
                ((SudtTransfer) this.instance).setAmountBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.SudtTransferOrBuilder
            public boolean getUseMaxAmount() {
                return ((SudtTransfer) this.instance).getUseMaxAmount();
            }

            public Builder setUseMaxAmount(boolean value) {
                copyOnWrite();
                ((SudtTransfer) this.instance).setUseMaxAmount(value);
                return this;
            }

            public Builder clearUseMaxAmount() {
                copyOnWrite();
                ((SudtTransfer) this.instance).clearUseMaxAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67331.f1808xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SudtTransfer();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\n\u0004Ȉ\u0005\u0007", new Object[]{"toAddress_", "changeAddress_", "sudtAddress_", "amount_", "useMaxAmount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<SudtTransfer> parser = PARSER;
                    if (parser == null) {
                        synchronized (SudtTransfer.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            SudtTransfer sudtTransfer = new SudtTransfer();
            DEFAULT_INSTANCE = sudtTransfer;
            GeneratedMessageLite.registerDefaultInstance(SudtTransfer.class, sudtTransfer);
        }

        public static SudtTransfer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<SudtTransfer> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class DaoDeposit extends GeneratedMessageLite<DaoDeposit, Builder> implements DaoDepositOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        public static final int CHANGE_ADDRESS_FIELD_NUMBER = 2;
        private static final DaoDeposit DEFAULT_INSTANCE;
        private static volatile Parser<DaoDeposit> PARSER = null;
        public static final int TO_ADDRESS_FIELD_NUMBER = 1;
        private long amount_;
        private String toAddress_ = "";
        private String changeAddress_ = "";

        private DaoDeposit() {
        }

        @Override // wallet.core.jni.proto.Nervos.DaoDepositOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.Nervos.DaoDepositOrBuilder
        public ByteString getToAddressBytes() {
            return ByteString.copyFromUtf8(this.toAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToAddress(String value) {
            value.getClass();
            this.toAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearToAddress() {
            this.toAddress_ = getDefaultInstance().getToAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.toAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Nervos.DaoDepositOrBuilder
        public String getChangeAddress() {
            return this.changeAddress_;
        }

        @Override // wallet.core.jni.proto.Nervos.DaoDepositOrBuilder
        public ByteString getChangeAddressBytes() {
            return ByteString.copyFromUtf8(this.changeAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChangeAddress(String value) {
            value.getClass();
            this.changeAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChangeAddress() {
            this.changeAddress_ = getDefaultInstance().getChangeAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChangeAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.changeAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Nervos.DaoDepositOrBuilder
        public long getAmount() {
            return this.amount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(long value) {
            this.amount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = 0L;
        }

        public static DaoDeposit parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DaoDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DaoDeposit parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DaoDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DaoDeposit parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DaoDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DaoDeposit parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DaoDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DaoDeposit parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DaoDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DaoDeposit parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DaoDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DaoDeposit parseFrom(InputStream input) throws IOException {
            return (DaoDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DaoDeposit parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DaoDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DaoDeposit parseDelimitedFrom(InputStream input) throws IOException {
            return (DaoDeposit) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DaoDeposit parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DaoDeposit) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DaoDeposit parseFrom(CodedInputStream input) throws IOException {
            return (DaoDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DaoDeposit parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DaoDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DaoDeposit prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DaoDeposit, Builder> implements DaoDepositOrBuilder {
            /* synthetic */ Builder(C67331 c67331) {
                this();
            }

            private Builder() {
                super(DaoDeposit.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nervos.DaoDepositOrBuilder
            public String getToAddress() {
                return ((DaoDeposit) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.Nervos.DaoDepositOrBuilder
            public ByteString getToAddressBytes() {
                return ((DaoDeposit) this.instance).getToAddressBytes();
            }

            public Builder setToAddress(String value) {
                copyOnWrite();
                ((DaoDeposit) this.instance).setToAddress(value);
                return this;
            }

            public Builder clearToAddress() {
                copyOnWrite();
                ((DaoDeposit) this.instance).clearToAddress();
                return this;
            }

            public Builder setToAddressBytes(ByteString value) {
                copyOnWrite();
                ((DaoDeposit) this.instance).setToAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.DaoDepositOrBuilder
            public String getChangeAddress() {
                return ((DaoDeposit) this.instance).getChangeAddress();
            }

            @Override // wallet.core.jni.proto.Nervos.DaoDepositOrBuilder
            public ByteString getChangeAddressBytes() {
                return ((DaoDeposit) this.instance).getChangeAddressBytes();
            }

            public Builder setChangeAddress(String value) {
                copyOnWrite();
                ((DaoDeposit) this.instance).setChangeAddress(value);
                return this;
            }

            public Builder clearChangeAddress() {
                copyOnWrite();
                ((DaoDeposit) this.instance).clearChangeAddress();
                return this;
            }

            public Builder setChangeAddressBytes(ByteString value) {
                copyOnWrite();
                ((DaoDeposit) this.instance).setChangeAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.DaoDepositOrBuilder
            public long getAmount() {
                return ((DaoDeposit) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((DaoDeposit) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((DaoDeposit) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67331.f1808xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DaoDeposit();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u0003", new Object[]{"toAddress_", "changeAddress_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DaoDeposit> parser = PARSER;
                    if (parser == null) {
                        synchronized (DaoDeposit.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            DaoDeposit daoDeposit = new DaoDeposit();
            DEFAULT_INSTANCE = daoDeposit;
            GeneratedMessageLite.registerDefaultInstance(DaoDeposit.class, daoDeposit);
        }

        public static DaoDeposit getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DaoDeposit> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class DaoWithdrawPhase1 extends GeneratedMessageLite<DaoWithdrawPhase1, Builder> implements DaoWithdrawPhase1OrBuilder {
        public static final int CHANGE_ADDRESS_FIELD_NUMBER = 2;
        private static final DaoWithdrawPhase1 DEFAULT_INSTANCE;
        public static final int DEPOSIT_CELL_FIELD_NUMBER = 1;
        private static volatile Parser<DaoWithdrawPhase1> PARSER;
        private String changeAddress_ = "";
        private Cell depositCell_;

        private DaoWithdrawPhase1() {
        }

        @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase1OrBuilder
        public boolean hasDepositCell() {
            return this.depositCell_ != null;
        }

        @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase1OrBuilder
        public Cell getDepositCell() {
            Cell cell = this.depositCell_;
            return cell == null ? Cell.getDefaultInstance() : cell;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDepositCell(Cell value) {
            value.getClass();
            this.depositCell_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDepositCell(Cell value) {
            value.getClass();
            Cell cell = this.depositCell_;
            if (cell != null && cell != Cell.getDefaultInstance()) {
                this.depositCell_ = Cell.newBuilder(this.depositCell_).mergeFrom((Cell.Builder) value).buildPartial();
            } else {
                this.depositCell_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDepositCell() {
            this.depositCell_ = null;
        }

        @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase1OrBuilder
        public String getChangeAddress() {
            return this.changeAddress_;
        }

        @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase1OrBuilder
        public ByteString getChangeAddressBytes() {
            return ByteString.copyFromUtf8(this.changeAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChangeAddress(String value) {
            value.getClass();
            this.changeAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChangeAddress() {
            this.changeAddress_ = getDefaultInstance().getChangeAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChangeAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.changeAddress_ = value.toStringUtf8();
        }

        public static DaoWithdrawPhase1 parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DaoWithdrawPhase1) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DaoWithdrawPhase1 parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DaoWithdrawPhase1) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DaoWithdrawPhase1 parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DaoWithdrawPhase1) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DaoWithdrawPhase1 parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DaoWithdrawPhase1) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DaoWithdrawPhase1 parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DaoWithdrawPhase1) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DaoWithdrawPhase1 parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DaoWithdrawPhase1) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DaoWithdrawPhase1 parseFrom(InputStream input) throws IOException {
            return (DaoWithdrawPhase1) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DaoWithdrawPhase1 parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DaoWithdrawPhase1) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DaoWithdrawPhase1 parseDelimitedFrom(InputStream input) throws IOException {
            return (DaoWithdrawPhase1) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DaoWithdrawPhase1 parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DaoWithdrawPhase1) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DaoWithdrawPhase1 parseFrom(CodedInputStream input) throws IOException {
            return (DaoWithdrawPhase1) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DaoWithdrawPhase1 parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DaoWithdrawPhase1) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DaoWithdrawPhase1 prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DaoWithdrawPhase1, Builder> implements DaoWithdrawPhase1OrBuilder {
            /* synthetic */ Builder(C67331 c67331) {
                this();
            }

            private Builder() {
                super(DaoWithdrawPhase1.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase1OrBuilder
            public boolean hasDepositCell() {
                return ((DaoWithdrawPhase1) this.instance).hasDepositCell();
            }

            @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase1OrBuilder
            public Cell getDepositCell() {
                return ((DaoWithdrawPhase1) this.instance).getDepositCell();
            }

            public Builder setDepositCell(Cell value) {
                copyOnWrite();
                ((DaoWithdrawPhase1) this.instance).setDepositCell(value);
                return this;
            }

            public Builder setDepositCell(Cell.Builder builderForValue) {
                copyOnWrite();
                ((DaoWithdrawPhase1) this.instance).setDepositCell(builderForValue.build());
                return this;
            }

            public Builder mergeDepositCell(Cell value) {
                copyOnWrite();
                ((DaoWithdrawPhase1) this.instance).mergeDepositCell(value);
                return this;
            }

            public Builder clearDepositCell() {
                copyOnWrite();
                ((DaoWithdrawPhase1) this.instance).clearDepositCell();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase1OrBuilder
            public String getChangeAddress() {
                return ((DaoWithdrawPhase1) this.instance).getChangeAddress();
            }

            @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase1OrBuilder
            public ByteString getChangeAddressBytes() {
                return ((DaoWithdrawPhase1) this.instance).getChangeAddressBytes();
            }

            public Builder setChangeAddress(String value) {
                copyOnWrite();
                ((DaoWithdrawPhase1) this.instance).setChangeAddress(value);
                return this;
            }

            public Builder clearChangeAddress() {
                copyOnWrite();
                ((DaoWithdrawPhase1) this.instance).clearChangeAddress();
                return this;
            }

            public Builder setChangeAddressBytes(ByteString value) {
                copyOnWrite();
                ((DaoWithdrawPhase1) this.instance).setChangeAddressBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67331.f1808xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DaoWithdrawPhase1();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002Ȉ", new Object[]{"depositCell_", "changeAddress_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DaoWithdrawPhase1> parser = PARSER;
                    if (parser == null) {
                        synchronized (DaoWithdrawPhase1.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            DaoWithdrawPhase1 daoWithdrawPhase1 = new DaoWithdrawPhase1();
            DEFAULT_INSTANCE = daoWithdrawPhase1;
            GeneratedMessageLite.registerDefaultInstance(DaoWithdrawPhase1.class, daoWithdrawPhase1);
        }

        public static DaoWithdrawPhase1 getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DaoWithdrawPhase1> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class DaoWithdrawPhase2 extends GeneratedMessageLite<DaoWithdrawPhase2, Builder> implements DaoWithdrawPhase2OrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        private static final DaoWithdrawPhase2 DEFAULT_INSTANCE;
        public static final int DEPOSIT_CELL_FIELD_NUMBER = 1;
        private static volatile Parser<DaoWithdrawPhase2> PARSER = null;
        public static final int WITHDRAWING_CELL_FIELD_NUMBER = 2;
        private long amount_;
        private Cell depositCell_;
        private Cell withdrawingCell_;

        private DaoWithdrawPhase2() {
        }

        @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase2OrBuilder
        public boolean hasDepositCell() {
            return this.depositCell_ != null;
        }

        @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase2OrBuilder
        public Cell getDepositCell() {
            Cell cell = this.depositCell_;
            return cell == null ? Cell.getDefaultInstance() : cell;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDepositCell(Cell value) {
            value.getClass();
            this.depositCell_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDepositCell(Cell value) {
            value.getClass();
            Cell cell = this.depositCell_;
            if (cell != null && cell != Cell.getDefaultInstance()) {
                this.depositCell_ = Cell.newBuilder(this.depositCell_).mergeFrom((Cell.Builder) value).buildPartial();
            } else {
                this.depositCell_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDepositCell() {
            this.depositCell_ = null;
        }

        @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase2OrBuilder
        public boolean hasWithdrawingCell() {
            return this.withdrawingCell_ != null;
        }

        @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase2OrBuilder
        public Cell getWithdrawingCell() {
            Cell cell = this.withdrawingCell_;
            return cell == null ? Cell.getDefaultInstance() : cell;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWithdrawingCell(Cell value) {
            value.getClass();
            this.withdrawingCell_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeWithdrawingCell(Cell value) {
            value.getClass();
            Cell cell = this.withdrawingCell_;
            if (cell != null && cell != Cell.getDefaultInstance()) {
                this.withdrawingCell_ = Cell.newBuilder(this.withdrawingCell_).mergeFrom((Cell.Builder) value).buildPartial();
            } else {
                this.withdrawingCell_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWithdrawingCell() {
            this.withdrawingCell_ = null;
        }

        @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase2OrBuilder
        public long getAmount() {
            return this.amount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(long value) {
            this.amount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = 0L;
        }

        public static DaoWithdrawPhase2 parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DaoWithdrawPhase2) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DaoWithdrawPhase2 parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DaoWithdrawPhase2) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DaoWithdrawPhase2 parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DaoWithdrawPhase2) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DaoWithdrawPhase2 parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DaoWithdrawPhase2) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DaoWithdrawPhase2 parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DaoWithdrawPhase2) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DaoWithdrawPhase2 parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DaoWithdrawPhase2) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DaoWithdrawPhase2 parseFrom(InputStream input) throws IOException {
            return (DaoWithdrawPhase2) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DaoWithdrawPhase2 parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DaoWithdrawPhase2) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DaoWithdrawPhase2 parseDelimitedFrom(InputStream input) throws IOException {
            return (DaoWithdrawPhase2) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DaoWithdrawPhase2 parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DaoWithdrawPhase2) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DaoWithdrawPhase2 parseFrom(CodedInputStream input) throws IOException {
            return (DaoWithdrawPhase2) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DaoWithdrawPhase2 parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DaoWithdrawPhase2) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DaoWithdrawPhase2 prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DaoWithdrawPhase2, Builder> implements DaoWithdrawPhase2OrBuilder {
            /* synthetic */ Builder(C67331 c67331) {
                this();
            }

            private Builder() {
                super(DaoWithdrawPhase2.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase2OrBuilder
            public boolean hasDepositCell() {
                return ((DaoWithdrawPhase2) this.instance).hasDepositCell();
            }

            @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase2OrBuilder
            public Cell getDepositCell() {
                return ((DaoWithdrawPhase2) this.instance).getDepositCell();
            }

            public Builder setDepositCell(Cell value) {
                copyOnWrite();
                ((DaoWithdrawPhase2) this.instance).setDepositCell(value);
                return this;
            }

            public Builder setDepositCell(Cell.Builder builderForValue) {
                copyOnWrite();
                ((DaoWithdrawPhase2) this.instance).setDepositCell(builderForValue.build());
                return this;
            }

            public Builder mergeDepositCell(Cell value) {
                copyOnWrite();
                ((DaoWithdrawPhase2) this.instance).mergeDepositCell(value);
                return this;
            }

            public Builder clearDepositCell() {
                copyOnWrite();
                ((DaoWithdrawPhase2) this.instance).clearDepositCell();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase2OrBuilder
            public boolean hasWithdrawingCell() {
                return ((DaoWithdrawPhase2) this.instance).hasWithdrawingCell();
            }

            @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase2OrBuilder
            public Cell getWithdrawingCell() {
                return ((DaoWithdrawPhase2) this.instance).getWithdrawingCell();
            }

            public Builder setWithdrawingCell(Cell value) {
                copyOnWrite();
                ((DaoWithdrawPhase2) this.instance).setWithdrawingCell(value);
                return this;
            }

            public Builder setWithdrawingCell(Cell.Builder builderForValue) {
                copyOnWrite();
                ((DaoWithdrawPhase2) this.instance).setWithdrawingCell(builderForValue.build());
                return this;
            }

            public Builder mergeWithdrawingCell(Cell value) {
                copyOnWrite();
                ((DaoWithdrawPhase2) this.instance).mergeWithdrawingCell(value);
                return this;
            }

            public Builder clearWithdrawingCell() {
                copyOnWrite();
                ((DaoWithdrawPhase2) this.instance).clearWithdrawingCell();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.DaoWithdrawPhase2OrBuilder
            public long getAmount() {
                return ((DaoWithdrawPhase2) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((DaoWithdrawPhase2) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((DaoWithdrawPhase2) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67331.f1808xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DaoWithdrawPhase2();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u0003", new Object[]{"depositCell_", "withdrawingCell_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DaoWithdrawPhase2> parser = PARSER;
                    if (parser == null) {
                        synchronized (DaoWithdrawPhase2.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            DaoWithdrawPhase2 daoWithdrawPhase2 = new DaoWithdrawPhase2();
            DEFAULT_INSTANCE = daoWithdrawPhase2;
            GeneratedMessageLite.registerDefaultInstance(DaoWithdrawPhase2.class, daoWithdrawPhase2);
        }

        public static DaoWithdrawPhase2 getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DaoWithdrawPhase2> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int BYTE_FEE_FIELD_NUMBER = 1;
        public static final int CELL_FIELD_NUMBER = 3;
        public static final int DAO_DEPOSIT_FIELD_NUMBER = 7;
        public static final int DAO_WITHDRAW_PHASE1_FIELD_NUMBER = 8;
        public static final int DAO_WITHDRAW_PHASE2_FIELD_NUMBER = 9;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int NATIVE_TRANSFER_FIELD_NUMBER = 5;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PLAN_FIELD_NUMBER = 4;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 2;
        public static final int SUDT_TRANSFER_FIELD_NUMBER = 6;
        private long byteFee_;
        private Object operationOneof_;
        private TransactionPlan plan_;
        private int operationOneofCase_ = 0;
        private Internal.ProtobufList<ByteString> privateKey_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<Cell> cell_ = GeneratedMessageLite.emptyProtobufList();

        private SigningInput() {
        }

        /* loaded from: classes6.dex */
        public enum OperationOneofCase {
            NATIVE_TRANSFER(5),
            SUDT_TRANSFER(6),
            DAO_DEPOSIT(7),
            DAO_WITHDRAW_PHASE1(8),
            DAO_WITHDRAW_PHASE2(9),
            OPERATIONONEOF_NOT_SET(0);
            
            private final int value;

            OperationOneofCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static OperationOneofCase valueOf(int value) {
                return forNumber(value);
            }

            public static OperationOneofCase forNumber(int value) {
                if (value != 0) {
                    switch (value) {
                        case 5:
                            return NATIVE_TRANSFER;
                        case 6:
                            return SUDT_TRANSFER;
                        case 7:
                            return DAO_DEPOSIT;
                        case 8:
                            return DAO_WITHDRAW_PHASE1;
                        case 9:
                            return DAO_WITHDRAW_PHASE2;
                        default:
                            return null;
                    }
                }
                return OPERATIONONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public OperationOneofCase getOperationOneofCase() {
            return OperationOneofCase.forNumber(this.operationOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOperationOneof() {
            this.operationOneofCase_ = 0;
            this.operationOneof_ = null;
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public long getByteFee() {
            return this.byteFee_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setByteFee(long value) {
            this.byteFee_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearByteFee() {
            this.byteFee_ = 0L;
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public List<ByteString> getPrivateKeyList() {
            return this.privateKey_;
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public int getPrivateKeyCount() {
            return this.privateKey_.size();
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public ByteString getPrivateKey(int index) {
            return this.privateKey_.get(index);
        }

        private void ensurePrivateKeyIsMutable() {
            Internal.ProtobufList<ByteString> protobufList = this.privateKey_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.privateKey_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPrivateKey(int index, ByteString value) {
            value.getClass();
            ensurePrivateKeyIsMutable();
            this.privateKey_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addPrivateKey(ByteString value) {
            value.getClass();
            ensurePrivateKeyIsMutable();
            this.privateKey_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllPrivateKey(Iterable<? extends ByteString> values) {
            ensurePrivateKeyIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.privateKey_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPrivateKey() {
            this.privateKey_ = GeneratedMessageLite.emptyProtobufList();
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public List<Cell> getCellList() {
            return this.cell_;
        }

        public List<? extends CellOrBuilder> getCellOrBuilderList() {
            return this.cell_;
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public int getCellCount() {
            return this.cell_.size();
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public Cell getCell(int index) {
            return this.cell_.get(index);
        }

        public CellOrBuilder getCellOrBuilder(int index) {
            return this.cell_.get(index);
        }

        private void ensureCellIsMutable() {
            Internal.ProtobufList<Cell> protobufList = this.cell_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.cell_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCell(int index, Cell value) {
            value.getClass();
            ensureCellIsMutable();
            this.cell_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addCell(Cell value) {
            value.getClass();
            ensureCellIsMutable();
            this.cell_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addCell(int index, Cell value) {
            value.getClass();
            ensureCellIsMutable();
            this.cell_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllCell(Iterable<? extends Cell> values) {
            ensureCellIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.cell_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCell() {
            this.cell_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeCell(int index) {
            ensureCellIsMutable();
            this.cell_.remove(index);
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public boolean hasPlan() {
            return this.plan_ != null;
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public TransactionPlan getPlan() {
            TransactionPlan transactionPlan = this.plan_;
            return transactionPlan == null ? TransactionPlan.getDefaultInstance() : transactionPlan;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPlan(TransactionPlan value) {
            value.getClass();
            this.plan_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergePlan(TransactionPlan value) {
            value.getClass();
            TransactionPlan transactionPlan = this.plan_;
            if (transactionPlan != null && transactionPlan != TransactionPlan.getDefaultInstance()) {
                this.plan_ = TransactionPlan.newBuilder(this.plan_).mergeFrom((TransactionPlan.Builder) value).buildPartial();
            } else {
                this.plan_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPlan() {
            this.plan_ = null;
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public boolean hasNativeTransfer() {
            return this.operationOneofCase_ == 5;
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public NativeTransfer getNativeTransfer() {
            if (this.operationOneofCase_ == 5) {
                return (NativeTransfer) this.operationOneof_;
            }
            return NativeTransfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNativeTransfer(NativeTransfer value) {
            value.getClass();
            this.operationOneof_ = value;
            this.operationOneofCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeNativeTransfer(NativeTransfer value) {
            value.getClass();
            if (this.operationOneofCase_ == 5 && this.operationOneof_ != NativeTransfer.getDefaultInstance()) {
                this.operationOneof_ = NativeTransfer.newBuilder((NativeTransfer) this.operationOneof_).mergeFrom((NativeTransfer.Builder) value).buildPartial();
            } else {
                this.operationOneof_ = value;
            }
            this.operationOneofCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNativeTransfer() {
            if (this.operationOneofCase_ == 5) {
                this.operationOneofCase_ = 0;
                this.operationOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public boolean hasSudtTransfer() {
            return this.operationOneofCase_ == 6;
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public SudtTransfer getSudtTransfer() {
            if (this.operationOneofCase_ == 6) {
                return (SudtTransfer) this.operationOneof_;
            }
            return SudtTransfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSudtTransfer(SudtTransfer value) {
            value.getClass();
            this.operationOneof_ = value;
            this.operationOneofCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeSudtTransfer(SudtTransfer value) {
            value.getClass();
            if (this.operationOneofCase_ == 6 && this.operationOneof_ != SudtTransfer.getDefaultInstance()) {
                this.operationOneof_ = SudtTransfer.newBuilder((SudtTransfer) this.operationOneof_).mergeFrom((SudtTransfer.Builder) value).buildPartial();
            } else {
                this.operationOneof_ = value;
            }
            this.operationOneofCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSudtTransfer() {
            if (this.operationOneofCase_ == 6) {
                this.operationOneofCase_ = 0;
                this.operationOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public boolean hasDaoDeposit() {
            return this.operationOneofCase_ == 7;
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public DaoDeposit getDaoDeposit() {
            if (this.operationOneofCase_ == 7) {
                return (DaoDeposit) this.operationOneof_;
            }
            return DaoDeposit.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDaoDeposit(DaoDeposit value) {
            value.getClass();
            this.operationOneof_ = value;
            this.operationOneofCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDaoDeposit(DaoDeposit value) {
            value.getClass();
            if (this.operationOneofCase_ == 7 && this.operationOneof_ != DaoDeposit.getDefaultInstance()) {
                this.operationOneof_ = DaoDeposit.newBuilder((DaoDeposit) this.operationOneof_).mergeFrom((DaoDeposit.Builder) value).buildPartial();
            } else {
                this.operationOneof_ = value;
            }
            this.operationOneofCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDaoDeposit() {
            if (this.operationOneofCase_ == 7) {
                this.operationOneofCase_ = 0;
                this.operationOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public boolean hasDaoWithdrawPhase1() {
            return this.operationOneofCase_ == 8;
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public DaoWithdrawPhase1 getDaoWithdrawPhase1() {
            if (this.operationOneofCase_ == 8) {
                return (DaoWithdrawPhase1) this.operationOneof_;
            }
            return DaoWithdrawPhase1.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDaoWithdrawPhase1(DaoWithdrawPhase1 value) {
            value.getClass();
            this.operationOneof_ = value;
            this.operationOneofCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDaoWithdrawPhase1(DaoWithdrawPhase1 value) {
            value.getClass();
            if (this.operationOneofCase_ == 8 && this.operationOneof_ != DaoWithdrawPhase1.getDefaultInstance()) {
                this.operationOneof_ = DaoWithdrawPhase1.newBuilder((DaoWithdrawPhase1) this.operationOneof_).mergeFrom((DaoWithdrawPhase1.Builder) value).buildPartial();
            } else {
                this.operationOneof_ = value;
            }
            this.operationOneofCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDaoWithdrawPhase1() {
            if (this.operationOneofCase_ == 8) {
                this.operationOneofCase_ = 0;
                this.operationOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public boolean hasDaoWithdrawPhase2() {
            return this.operationOneofCase_ == 9;
        }

        @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
        public DaoWithdrawPhase2 getDaoWithdrawPhase2() {
            if (this.operationOneofCase_ == 9) {
                return (DaoWithdrawPhase2) this.operationOneof_;
            }
            return DaoWithdrawPhase2.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDaoWithdrawPhase2(DaoWithdrawPhase2 value) {
            value.getClass();
            this.operationOneof_ = value;
            this.operationOneofCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDaoWithdrawPhase2(DaoWithdrawPhase2 value) {
            value.getClass();
            if (this.operationOneofCase_ == 9 && this.operationOneof_ != DaoWithdrawPhase2.getDefaultInstance()) {
                this.operationOneof_ = DaoWithdrawPhase2.newBuilder((DaoWithdrawPhase2) this.operationOneof_).mergeFrom((DaoWithdrawPhase2.Builder) value).buildPartial();
            } else {
                this.operationOneof_ = value;
            }
            this.operationOneofCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDaoWithdrawPhase2() {
            if (this.operationOneofCase_ == 9) {
                this.operationOneofCase_ = 0;
                this.operationOneof_ = null;
            }
        }

        public static SigningInput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningInput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningInput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningInput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningInput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningInput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningInput parseFrom(InputStream input) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningInput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SigningInput parseDelimitedFrom(InputStream input) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningInput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SigningInput parseFrom(CodedInputStream input) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningInput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(SigningInput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningInput, Builder> implements SigningInputOrBuilder {
            /* synthetic */ Builder(C67331 c67331) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public OperationOneofCase getOperationOneofCase() {
                return ((SigningInput) this.instance).getOperationOneofCase();
            }

            public Builder clearOperationOneof() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOperationOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public long getByteFee() {
                return ((SigningInput) this.instance).getByteFee();
            }

            public Builder setByteFee(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setByteFee(value);
                return this;
            }

            public Builder clearByteFee() {
                copyOnWrite();
                ((SigningInput) this.instance).clearByteFee();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public List<ByteString> getPrivateKeyList() {
                return Collections.unmodifiableList(((SigningInput) this.instance).getPrivateKeyList());
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public int getPrivateKeyCount() {
                return ((SigningInput) this.instance).getPrivateKeyCount();
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public ByteString getPrivateKey(int index) {
                return ((SigningInput) this.instance).getPrivateKey(index);
            }

            public Builder setPrivateKey(int index, ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setPrivateKey(index, value);
                return this;
            }

            public Builder addPrivateKey(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).addPrivateKey(value);
                return this;
            }

            public Builder addAllPrivateKey(Iterable<? extends ByteString> values) {
                copyOnWrite();
                ((SigningInput) this.instance).addAllPrivateKey(values);
                return this;
            }

            public Builder clearPrivateKey() {
                copyOnWrite();
                ((SigningInput) this.instance).clearPrivateKey();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public List<Cell> getCellList() {
                return Collections.unmodifiableList(((SigningInput) this.instance).getCellList());
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public int getCellCount() {
                return ((SigningInput) this.instance).getCellCount();
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public Cell getCell(int index) {
                return ((SigningInput) this.instance).getCell(index);
            }

            public Builder setCell(int index, Cell value) {
                copyOnWrite();
                ((SigningInput) this.instance).setCell(index, value);
                return this;
            }

            public Builder setCell(int index, Cell.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setCell(index, builderForValue.build());
                return this;
            }

            public Builder addCell(Cell value) {
                copyOnWrite();
                ((SigningInput) this.instance).addCell(value);
                return this;
            }

            public Builder addCell(int index, Cell value) {
                copyOnWrite();
                ((SigningInput) this.instance).addCell(index, value);
                return this;
            }

            public Builder addCell(Cell.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).addCell(builderForValue.build());
                return this;
            }

            public Builder addCell(int index, Cell.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).addCell(index, builderForValue.build());
                return this;
            }

            public Builder addAllCell(Iterable<? extends Cell> values) {
                copyOnWrite();
                ((SigningInput) this.instance).addAllCell(values);
                return this;
            }

            public Builder clearCell() {
                copyOnWrite();
                ((SigningInput) this.instance).clearCell();
                return this;
            }

            public Builder removeCell(int index) {
                copyOnWrite();
                ((SigningInput) this.instance).removeCell(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public boolean hasPlan() {
                return ((SigningInput) this.instance).hasPlan();
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public TransactionPlan getPlan() {
                return ((SigningInput) this.instance).getPlan();
            }

            public Builder setPlan(TransactionPlan value) {
                copyOnWrite();
                ((SigningInput) this.instance).setPlan(value);
                return this;
            }

            public Builder setPlan(TransactionPlan.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setPlan(builderForValue.build());
                return this;
            }

            public Builder mergePlan(TransactionPlan value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergePlan(value);
                return this;
            }

            public Builder clearPlan() {
                copyOnWrite();
                ((SigningInput) this.instance).clearPlan();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public boolean hasNativeTransfer() {
                return ((SigningInput) this.instance).hasNativeTransfer();
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public NativeTransfer getNativeTransfer() {
                return ((SigningInput) this.instance).getNativeTransfer();
            }

            public Builder setNativeTransfer(NativeTransfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).setNativeTransfer(value);
                return this;
            }

            public Builder setNativeTransfer(NativeTransfer.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setNativeTransfer(builderForValue.build());
                return this;
            }

            public Builder mergeNativeTransfer(NativeTransfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeNativeTransfer(value);
                return this;
            }

            public Builder clearNativeTransfer() {
                copyOnWrite();
                ((SigningInput) this.instance).clearNativeTransfer();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public boolean hasSudtTransfer() {
                return ((SigningInput) this.instance).hasSudtTransfer();
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public SudtTransfer getSudtTransfer() {
                return ((SigningInput) this.instance).getSudtTransfer();
            }

            public Builder setSudtTransfer(SudtTransfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSudtTransfer(value);
                return this;
            }

            public Builder setSudtTransfer(SudtTransfer.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setSudtTransfer(builderForValue.build());
                return this;
            }

            public Builder mergeSudtTransfer(SudtTransfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeSudtTransfer(value);
                return this;
            }

            public Builder clearSudtTransfer() {
                copyOnWrite();
                ((SigningInput) this.instance).clearSudtTransfer();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public boolean hasDaoDeposit() {
                return ((SigningInput) this.instance).hasDaoDeposit();
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public DaoDeposit getDaoDeposit() {
                return ((SigningInput) this.instance).getDaoDeposit();
            }

            public Builder setDaoDeposit(DaoDeposit value) {
                copyOnWrite();
                ((SigningInput) this.instance).setDaoDeposit(value);
                return this;
            }

            public Builder setDaoDeposit(DaoDeposit.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setDaoDeposit(builderForValue.build());
                return this;
            }

            public Builder mergeDaoDeposit(DaoDeposit value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeDaoDeposit(value);
                return this;
            }

            public Builder clearDaoDeposit() {
                copyOnWrite();
                ((SigningInput) this.instance).clearDaoDeposit();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public boolean hasDaoWithdrawPhase1() {
                return ((SigningInput) this.instance).hasDaoWithdrawPhase1();
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public DaoWithdrawPhase1 getDaoWithdrawPhase1() {
                return ((SigningInput) this.instance).getDaoWithdrawPhase1();
            }

            public Builder setDaoWithdrawPhase1(DaoWithdrawPhase1 value) {
                copyOnWrite();
                ((SigningInput) this.instance).setDaoWithdrawPhase1(value);
                return this;
            }

            public Builder setDaoWithdrawPhase1(DaoWithdrawPhase1.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setDaoWithdrawPhase1(builderForValue.build());
                return this;
            }

            public Builder mergeDaoWithdrawPhase1(DaoWithdrawPhase1 value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeDaoWithdrawPhase1(value);
                return this;
            }

            public Builder clearDaoWithdrawPhase1() {
                copyOnWrite();
                ((SigningInput) this.instance).clearDaoWithdrawPhase1();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public boolean hasDaoWithdrawPhase2() {
                return ((SigningInput) this.instance).hasDaoWithdrawPhase2();
            }

            @Override // wallet.core.jni.proto.Nervos.SigningInputOrBuilder
            public DaoWithdrawPhase2 getDaoWithdrawPhase2() {
                return ((SigningInput) this.instance).getDaoWithdrawPhase2();
            }

            public Builder setDaoWithdrawPhase2(DaoWithdrawPhase2 value) {
                copyOnWrite();
                ((SigningInput) this.instance).setDaoWithdrawPhase2(value);
                return this;
            }

            public Builder setDaoWithdrawPhase2(DaoWithdrawPhase2.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setDaoWithdrawPhase2(builderForValue.build());
                return this;
            }

            public Builder mergeDaoWithdrawPhase2(DaoWithdrawPhase2 value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeDaoWithdrawPhase2(value);
                return this;
            }

            public Builder clearDaoWithdrawPhase2() {
                copyOnWrite();
                ((SigningInput) this.instance).clearDaoWithdrawPhase2();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67331.f1808xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\t\u0001\u0000\u0001\t\t\u0000\u0002\u0000\u0001\u0003\u0002\u001c\u0003\u001b\u0004\t\u0005<\u0000\u0006<\u0000\u0007<\u0000\b<\u0000\t<\u0000", new Object[]{"operationOneof_", "operationOneofCase_", "byteFee_", "privateKey_", "cell_", Cell.class, "plan_", NativeTransfer.class, SudtTransfer.class, DaoDeposit.class, DaoWithdrawPhase1.class, DaoWithdrawPhase2.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<SigningInput> parser = PARSER;
                    if (parser == null) {
                        synchronized (SigningInput.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            SigningInput signingInput = new SigningInput();
            DEFAULT_INSTANCE = signingInput;
            GeneratedMessageLite.registerDefaultInstance(SigningInput.class, signingInput);
        }

        public static SigningInput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<SigningInput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class Cell extends GeneratedMessageLite<Cell, Builder> implements CellOrBuilder {
        public static final int BLOCK_HASH_FIELD_NUMBER = 7;
        public static final int BLOCK_NUMBER_FIELD_NUMBER = 6;
        public static final int CAPACITY_FIELD_NUMBER = 2;
        public static final int DATA_FIELD_NUMBER = 5;
        private static final Cell DEFAULT_INSTANCE;
        public static final int INPUT_TYPE_FIELD_NUMBER = 9;
        public static final int LOCK_FIELD_NUMBER = 3;
        public static final int OUTPUT_TYPE_FIELD_NUMBER = 10;
        public static final int OUT_POINT_FIELD_NUMBER = 1;
        private static volatile Parser<Cell> PARSER = null;
        public static final int SINCE_FIELD_NUMBER = 8;
        public static final int TYPE_FIELD_NUMBER = 4;
        private ByteString blockHash_;
        private long blockNumber_;
        private long capacity_;
        private ByteString data_;
        private ByteString inputType_;
        private Script lock_;
        private OutPoint outPoint_;
        private ByteString outputType_;
        private long since_;
        private Script type_;

        private Cell() {
            ByteString byteString = ByteString.EMPTY;
            this.data_ = byteString;
            this.blockHash_ = byteString;
            this.inputType_ = byteString;
            this.outputType_ = byteString;
        }

        @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
        public boolean hasOutPoint() {
            return this.outPoint_ != null;
        }

        @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
        public OutPoint getOutPoint() {
            OutPoint outPoint = this.outPoint_;
            return outPoint == null ? OutPoint.getDefaultInstance() : outPoint;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOutPoint(OutPoint value) {
            value.getClass();
            this.outPoint_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOutPoint(OutPoint value) {
            value.getClass();
            OutPoint outPoint = this.outPoint_;
            if (outPoint != null && outPoint != OutPoint.getDefaultInstance()) {
                this.outPoint_ = OutPoint.newBuilder(this.outPoint_).mergeFrom((OutPoint.Builder) value).buildPartial();
            } else {
                this.outPoint_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOutPoint() {
            this.outPoint_ = null;
        }

        @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
        public long getCapacity() {
            return this.capacity_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCapacity(long value) {
            this.capacity_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCapacity() {
            this.capacity_ = 0L;
        }

        @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
        public boolean hasLock() {
            return this.lock_ != null;
        }

        @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
        public Script getLock() {
            Script script = this.lock_;
            return script == null ? Script.getDefaultInstance() : script;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLock(Script value) {
            value.getClass();
            this.lock_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeLock(Script value) {
            value.getClass();
            Script script = this.lock_;
            if (script != null && script != Script.getDefaultInstance()) {
                this.lock_ = Script.newBuilder(this.lock_).mergeFrom((Script.Builder) value).buildPartial();
            } else {
                this.lock_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLock() {
            this.lock_ = null;
        }

        @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
        public boolean hasType() {
            return this.type_ != null;
        }

        @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
        public Script getType() {
            Script script = this.type_;
            return script == null ? Script.getDefaultInstance() : script;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setType(Script value) {
            value.getClass();
            this.type_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeType(Script value) {
            value.getClass();
            Script script = this.type_;
            if (script != null && script != Script.getDefaultInstance()) {
                this.type_ = Script.newBuilder(this.type_).mergeFrom((Script.Builder) value).buildPartial();
            } else {
                this.type_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearType() {
            this.type_ = null;
        }

        @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
        public ByteString getData() {
            return this.data_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setData(ByteString value) {
            value.getClass();
            this.data_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearData() {
            this.data_ = getDefaultInstance().getData();
        }

        @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
        public long getBlockNumber() {
            return this.blockNumber_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBlockNumber(long value) {
            this.blockNumber_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBlockNumber() {
            this.blockNumber_ = 0L;
        }

        @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
        public ByteString getBlockHash() {
            return this.blockHash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBlockHash(ByteString value) {
            value.getClass();
            this.blockHash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBlockHash() {
            this.blockHash_ = getDefaultInstance().getBlockHash();
        }

        @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
        public long getSince() {
            return this.since_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSince(long value) {
            this.since_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSince() {
            this.since_ = 0L;
        }

        @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
        public ByteString getInputType() {
            return this.inputType_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setInputType(ByteString value) {
            value.getClass();
            this.inputType_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearInputType() {
            this.inputType_ = getDefaultInstance().getInputType();
        }

        @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
        public ByteString getOutputType() {
            return this.outputType_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOutputType(ByteString value) {
            value.getClass();
            this.outputType_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOutputType() {
            this.outputType_ = getDefaultInstance().getOutputType();
        }

        public static Cell parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Cell) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Cell parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Cell) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Cell parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Cell) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Cell parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Cell) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Cell parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Cell) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Cell parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Cell) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Cell parseFrom(InputStream input) throws IOException {
            return (Cell) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Cell parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Cell) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Cell parseDelimitedFrom(InputStream input) throws IOException {
            return (Cell) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Cell parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Cell) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Cell parseFrom(CodedInputStream input) throws IOException {
            return (Cell) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Cell parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Cell) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Cell prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Cell, Builder> implements CellOrBuilder {
            /* synthetic */ Builder(C67331 c67331) {
                this();
            }

            private Builder() {
                super(Cell.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
            public boolean hasOutPoint() {
                return ((Cell) this.instance).hasOutPoint();
            }

            @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
            public OutPoint getOutPoint() {
                return ((Cell) this.instance).getOutPoint();
            }

            public Builder setOutPoint(OutPoint value) {
                copyOnWrite();
                ((Cell) this.instance).setOutPoint(value);
                return this;
            }

            public Builder setOutPoint(OutPoint.Builder builderForValue) {
                copyOnWrite();
                ((Cell) this.instance).setOutPoint(builderForValue.build());
                return this;
            }

            public Builder mergeOutPoint(OutPoint value) {
                copyOnWrite();
                ((Cell) this.instance).mergeOutPoint(value);
                return this;
            }

            public Builder clearOutPoint() {
                copyOnWrite();
                ((Cell) this.instance).clearOutPoint();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
            public long getCapacity() {
                return ((Cell) this.instance).getCapacity();
            }

            public Builder setCapacity(long value) {
                copyOnWrite();
                ((Cell) this.instance).setCapacity(value);
                return this;
            }

            public Builder clearCapacity() {
                copyOnWrite();
                ((Cell) this.instance).clearCapacity();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
            public boolean hasLock() {
                return ((Cell) this.instance).hasLock();
            }

            @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
            public Script getLock() {
                return ((Cell) this.instance).getLock();
            }

            public Builder setLock(Script value) {
                copyOnWrite();
                ((Cell) this.instance).setLock(value);
                return this;
            }

            public Builder setLock(Script.Builder builderForValue) {
                copyOnWrite();
                ((Cell) this.instance).setLock(builderForValue.build());
                return this;
            }

            public Builder mergeLock(Script value) {
                copyOnWrite();
                ((Cell) this.instance).mergeLock(value);
                return this;
            }

            public Builder clearLock() {
                copyOnWrite();
                ((Cell) this.instance).clearLock();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
            public boolean hasType() {
                return ((Cell) this.instance).hasType();
            }

            @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
            public Script getType() {
                return ((Cell) this.instance).getType();
            }

            public Builder setType(Script value) {
                copyOnWrite();
                ((Cell) this.instance).setType(value);
                return this;
            }

            public Builder setType(Script.Builder builderForValue) {
                copyOnWrite();
                ((Cell) this.instance).setType(builderForValue.build());
                return this;
            }

            public Builder mergeType(Script value) {
                copyOnWrite();
                ((Cell) this.instance).mergeType(value);
                return this;
            }

            public Builder clearType() {
                copyOnWrite();
                ((Cell) this.instance).clearType();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
            public ByteString getData() {
                return ((Cell) this.instance).getData();
            }

            public Builder setData(ByteString value) {
                copyOnWrite();
                ((Cell) this.instance).setData(value);
                return this;
            }

            public Builder clearData() {
                copyOnWrite();
                ((Cell) this.instance).clearData();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
            public long getBlockNumber() {
                return ((Cell) this.instance).getBlockNumber();
            }

            public Builder setBlockNumber(long value) {
                copyOnWrite();
                ((Cell) this.instance).setBlockNumber(value);
                return this;
            }

            public Builder clearBlockNumber() {
                copyOnWrite();
                ((Cell) this.instance).clearBlockNumber();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
            public ByteString getBlockHash() {
                return ((Cell) this.instance).getBlockHash();
            }

            public Builder setBlockHash(ByteString value) {
                copyOnWrite();
                ((Cell) this.instance).setBlockHash(value);
                return this;
            }

            public Builder clearBlockHash() {
                copyOnWrite();
                ((Cell) this.instance).clearBlockHash();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
            public long getSince() {
                return ((Cell) this.instance).getSince();
            }

            public Builder setSince(long value) {
                copyOnWrite();
                ((Cell) this.instance).setSince(value);
                return this;
            }

            public Builder clearSince() {
                copyOnWrite();
                ((Cell) this.instance).clearSince();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
            public ByteString getInputType() {
                return ((Cell) this.instance).getInputType();
            }

            public Builder setInputType(ByteString value) {
                copyOnWrite();
                ((Cell) this.instance).setInputType(value);
                return this;
            }

            public Builder clearInputType() {
                copyOnWrite();
                ((Cell) this.instance).clearInputType();
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.CellOrBuilder
            public ByteString getOutputType() {
                return ((Cell) this.instance).getOutputType();
            }

            public Builder setOutputType(ByteString value) {
                copyOnWrite();
                ((Cell) this.instance).setOutputType(value);
                return this;
            }

            public Builder clearOutputType() {
                copyOnWrite();
                ((Cell) this.instance).clearOutputType();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67331.f1808xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Cell();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0000\u0000\u0001\t\u0002\u0003\u0003\t\u0004\t\u0005\n\u0006\u0003\u0007\n\b\u0003\t\n\n\n", new Object[]{"outPoint_", "capacity_", "lock_", "type_", "data_", "blockNumber_", "blockHash_", "since_", "inputType_", "outputType_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Cell> parser = PARSER;
                    if (parser == null) {
                        synchronized (Cell.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            Cell cell = new Cell();
            DEFAULT_INSTANCE = cell;
            GeneratedMessageLite.registerDefaultInstance(Cell.class, cell);
        }

        public static Cell getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Cell> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningOutput extends GeneratedMessageLite<SigningOutput, Builder> implements SigningOutputOrBuilder {
        private static final SigningOutput DEFAULT_INSTANCE;
        public static final int ERROR_FIELD_NUMBER = 3;
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int TRANSACTION_ID_FIELD_NUMBER = 2;
        public static final int TRANSACTION_JSON_FIELD_NUMBER = 1;
        private int error_;
        private String transactionJson_ = "";
        private String transactionId_ = "";

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.Nervos.SigningOutputOrBuilder
        public String getTransactionJson() {
            return this.transactionJson_;
        }

        @Override // wallet.core.jni.proto.Nervos.SigningOutputOrBuilder
        public ByteString getTransactionJsonBytes() {
            return ByteString.copyFromUtf8(this.transactionJson_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransactionJson(String value) {
            value.getClass();
            this.transactionJson_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransactionJson() {
            this.transactionJson_ = getDefaultInstance().getTransactionJson();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransactionJsonBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.transactionJson_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Nervos.SigningOutputOrBuilder
        public String getTransactionId() {
            return this.transactionId_;
        }

        @Override // wallet.core.jni.proto.Nervos.SigningOutputOrBuilder
        public ByteString getTransactionIdBytes() {
            return ByteString.copyFromUtf8(this.transactionId_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransactionId(String value) {
            value.getClass();
            this.transactionId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransactionId() {
            this.transactionId_ = getDefaultInstance().getTransactionId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransactionIdBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.transactionId_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Nervos.SigningOutputOrBuilder
        public int getErrorValue() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.Nervos.SigningOutputOrBuilder
        public Common.SigningError getError() {
            Common.SigningError forNumber = Common.SigningError.forNumber(this.error_);
            return forNumber == null ? Common.SigningError.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setErrorValue(int value) {
            this.error_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setError(Common.SigningError value) {
            this.error_ = value.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearError() {
            this.error_ = 0;
        }

        public static SigningOutput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningOutput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningOutput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningOutput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningOutput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningOutput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningOutput parseFrom(InputStream input) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningOutput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SigningOutput parseDelimitedFrom(InputStream input) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningOutput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SigningOutput parseFrom(CodedInputStream input) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningOutput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(SigningOutput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningOutput, Builder> implements SigningOutputOrBuilder {
            /* synthetic */ Builder(C67331 c67331) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nervos.SigningOutputOrBuilder
            public String getTransactionJson() {
                return ((SigningOutput) this.instance).getTransactionJson();
            }

            @Override // wallet.core.jni.proto.Nervos.SigningOutputOrBuilder
            public ByteString getTransactionJsonBytes() {
                return ((SigningOutput) this.instance).getTransactionJsonBytes();
            }

            public Builder setTransactionJson(String value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setTransactionJson(value);
                return this;
            }

            public Builder clearTransactionJson() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearTransactionJson();
                return this;
            }

            public Builder setTransactionJsonBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setTransactionJsonBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.SigningOutputOrBuilder
            public String getTransactionId() {
                return ((SigningOutput) this.instance).getTransactionId();
            }

            @Override // wallet.core.jni.proto.Nervos.SigningOutputOrBuilder
            public ByteString getTransactionIdBytes() {
                return ((SigningOutput) this.instance).getTransactionIdBytes();
            }

            public Builder setTransactionId(String value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setTransactionId(value);
                return this;
            }

            public Builder clearTransactionId() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearTransactionId();
                return this;
            }

            public Builder setTransactionIdBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setTransactionIdBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.SigningOutputOrBuilder
            public int getErrorValue() {
                return ((SigningOutput) this.instance).getErrorValue();
            }

            public Builder setErrorValue(int value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setErrorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nervos.SigningOutputOrBuilder
            public Common.SigningError getError() {
                return ((SigningOutput) this.instance).getError();
            }

            public Builder setError(Common.SigningError value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setError(value);
                return this;
            }

            public Builder clearError() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearError();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67331.f1808xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\f", new Object[]{"transactionJson_", "transactionId_", "error_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<SigningOutput> parser = PARSER;
                    if (parser == null) {
                        synchronized (SigningOutput.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            SigningOutput signingOutput = new SigningOutput();
            DEFAULT_INSTANCE = signingOutput;
            GeneratedMessageLite.registerDefaultInstance(SigningOutput.class, signingOutput);
        }

        public static SigningOutput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<SigningOutput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }
}
