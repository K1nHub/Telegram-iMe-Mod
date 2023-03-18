package drinkless.org.ton;
/* loaded from: classes3.dex */
public class TonApi {

    /* loaded from: classes3.dex */
    public static abstract class AccountState extends Object {
    }

    /* loaded from: classes3.dex */
    public static abstract class Action extends Object {
    }

    /* loaded from: classes3.dex */
    public static class ActionNoop extends Action {
        public static final int CONSTRUCTOR = 1135848603;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksGetMasterchainInfo extends Function {
        public static final int CONSTRUCTOR = -45493615;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static class Close extends Function {
        public static final int CONSTRUCTOR = -1187782273;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static class DeleteAllKeys extends Function {
        public static final int CONSTRUCTOR = 1608776483;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class DnsAction extends Object {
    }

    /* loaded from: classes3.dex */
    public static class DnsActionDeleteAll extends DnsAction {
        public static final int CONSTRUCTOR = 1067356318;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class DnsEntryData extends Object {
    }

    /* loaded from: classes3.dex */
    public static abstract class Function extends Object {
        @Override // drinkless.org.ton.TonApi.Object
        public native String toString();
    }

    /* loaded from: classes3.dex */
    public static class GetLogStream extends Function {
        public static final int CONSTRUCTOR = 1167608667;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static class GetLogTags extends Function {
        public static final int CONSTRUCTOR = -254449190;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static class GetLogVerbosityLevel extends Function {
        public static final int CONSTRUCTOR = 594057956;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class InitialAccountState extends Object {
    }

    /* loaded from: classes3.dex */
    public static abstract class InputKey extends Object {
    }

    /* loaded from: classes3.dex */
    public static class InputKeyFake extends InputKey {
        public static final int CONSTRUCTOR = -1074054722;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class KeyStoreType extends Object {
    }

    /* loaded from: classes3.dex */
    public static class KeyStoreTypeInMemory extends KeyStoreType {
        public static final int CONSTRUCTOR = -2106848825;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static class LiteServerGetInfo extends Function {
        public static final int CONSTRUCTOR = 1435327470;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class LogStream extends Object {
    }

    /* loaded from: classes3.dex */
    public static class LogStreamDefault extends LogStream {
        public static final int CONSTRUCTOR = 1390581436;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static class LogStreamEmpty extends LogStream {
        public static final int CONSTRUCTOR = -499912244;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class MsgData extends Object {
    }

    /* loaded from: classes3.dex */
    public static abstract class Object {
        public abstract int getConstructor();

        public native String toString();
    }

    /* renamed from: drinkless.org.ton.TonApi$Ok */
    /* loaded from: classes3.dex */
    public static class C2342Ok extends Object {
        public static final int CONSTRUCTOR = -722616727;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class PchanAction extends Object {
    }

    /* loaded from: classes3.dex */
    public static class PchanActionTimeout extends PchanAction {
        public static final int CONSTRUCTOR = 1998487795;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class PchanState extends Object {
    }

    /* loaded from: classes3.dex */
    public static abstract class SmcMethodId extends Object {
    }

    /* loaded from: classes3.dex */
    public static class Sync extends Function {
        public static final int CONSTRUCTOR = -1875977070;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class SyncState extends Object {
    }

    /* loaded from: classes3.dex */
    public static class SyncStateDone extends SyncState {
        public static final int CONSTRUCTOR = 1408448777;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class TvmStackEntry extends Object {
    }

    /* loaded from: classes3.dex */
    public static class TvmStackEntryUnsupported extends TvmStackEntry {
        public static final int CONSTRUCTOR = 378880498;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Update extends Object {
    }

    /* loaded from: classes3.dex */
    public static class AccountAddress extends Object {
        public static final int CONSTRUCTOR = 755613099;
        public String accountAddress;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public AccountAddress() {
        }

        public AccountAddress(String accountAddress) {
            this.accountAddress = accountAddress;
        }
    }

    /* loaded from: classes3.dex */
    public static class AccountList extends Object {
        public static final int CONSTRUCTOR = 2017374805;
        public FullAccountState[] accounts;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public AccountList() {
        }

        public AccountList(FullAccountState[] accounts) {
            this.accounts = accounts;
        }
    }

    /* loaded from: classes3.dex */
    public static class AccountRevisionList extends Object {
        public static final int CONSTRUCTOR = 527197386;
        public FullAccountState[] revisions;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public AccountRevisionList() {
        }

        public AccountRevisionList(FullAccountState[] revisions) {
            this.revisions = revisions;
        }
    }

    /* loaded from: classes3.dex */
    public static class RawAccountState extends AccountState {
        public static final int CONSTRUCTOR = -531917254;
        public byte[] code;
        public byte[] data;
        public byte[] frozenHash;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RawAccountState() {
        }

        public RawAccountState(byte[] code, byte[] data, byte[] frozenHash) {
            this.code = code;
            this.data = data;
            this.frozenHash = frozenHash;
        }
    }

    /* loaded from: classes3.dex */
    public static class WalletV3AccountState extends AccountState {
        public static final int CONSTRUCTOR = -1619351478;
        public int seqno;
        public long walletId;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public WalletV3AccountState() {
        }

        public WalletV3AccountState(long walletId, int seqno) {
            this.walletId = walletId;
            this.seqno = seqno;
        }
    }

    /* loaded from: classes3.dex */
    public static class WalletHighloadV1AccountState extends AccountState {
        public static final int CONSTRUCTOR = 1616372956;
        public int seqno;
        public long walletId;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public WalletHighloadV1AccountState() {
        }

        public WalletHighloadV1AccountState(long walletId, int seqno) {
            this.walletId = walletId;
            this.seqno = seqno;
        }
    }

    /* loaded from: classes3.dex */
    public static class WalletHighloadV2AccountState extends AccountState {
        public static final int CONSTRUCTOR = -1803723441;
        public long walletId;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public WalletHighloadV2AccountState() {
        }

        public WalletHighloadV2AccountState(long walletId) {
            this.walletId = walletId;
        }
    }

    /* loaded from: classes3.dex */
    public static class DnsAccountState extends AccountState {
        public static final int CONSTRUCTOR = 1727715434;
        public long walletId;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public DnsAccountState() {
        }

        public DnsAccountState(long walletId) {
            this.walletId = walletId;
        }
    }

    /* loaded from: classes3.dex */
    public static class RwalletAccountState extends AccountState {
        public static final int CONSTRUCTOR = -739540008;
        public RwalletConfig config;
        public int seqno;
        public long unlockedBalance;
        public long walletId;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RwalletAccountState() {
        }

        public RwalletAccountState(long walletId, int seqno, long unlockedBalance, RwalletConfig config) {
            this.walletId = walletId;
            this.seqno = seqno;
            this.unlockedBalance = unlockedBalance;
            this.config = config;
        }
    }

    /* loaded from: classes3.dex */
    public static class PchanAccountState extends AccountState {
        public static final int CONSTRUCTOR = 1612869496;
        public PchanConfig config;
        public String description;
        public PchanState state;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public PchanAccountState() {
        }

        public PchanAccountState(PchanConfig config, PchanState state, String description) {
            this.config = config;
            this.state = state;
            this.description = description;
        }
    }

    /* loaded from: classes3.dex */
    public static class UninitedAccountState extends AccountState {
        public static final int CONSTRUCTOR = 1522374408;
        public byte[] frozenHash;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public UninitedAccountState() {
        }

        public UninitedAccountState(byte[] frozenHash) {
            this.frozenHash = frozenHash;
        }
    }

    /* loaded from: classes3.dex */
    public static class ActionMsg extends Action {
        public static final int CONSTRUCTOR = 246839120;
        public boolean allowSendToUninited;
        public MsgMessage[] messages;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ActionMsg() {
        }

        public ActionMsg(MsgMessage[] messages, boolean allowSendToUninited) {
            this.messages = messages;
            this.allowSendToUninited = allowSendToUninited;
        }
    }

    /* loaded from: classes3.dex */
    public static class ActionDns extends Action {
        public static final int CONSTRUCTOR = 1193750561;
        public DnsAction[] actions;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ActionDns() {
        }

        public ActionDns(DnsAction[] actions) {
            this.actions = actions;
        }
    }

    /* loaded from: classes3.dex */
    public static class ActionPchan extends Action {
        public static final int CONSTRUCTOR = -1490172447;
        public PchanAction action;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ActionPchan() {
        }

        public ActionPchan(PchanAction action) {
            this.action = action;
        }
    }

    /* loaded from: classes3.dex */
    public static class ActionRwallet extends Action {
        public static final int CONSTRUCTOR = -117295163;
        public RwalletActionInit action;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ActionRwallet() {
        }

        public ActionRwallet(RwalletActionInit action) {
            this.action = action;
        }
    }

    /* loaded from: classes3.dex */
    public static class AdnlAddress extends Object {
        public static final int CONSTRUCTOR = 70358284;
        public String adnlAddress;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public AdnlAddress() {
        }

        public AdnlAddress(String adnlAddress) {
            this.adnlAddress = adnlAddress;
        }
    }

    /* loaded from: classes3.dex */
    public static class Bip39Hints extends Object {
        public static final int CONSTRUCTOR = 1012243456;
        public String[] words;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public Bip39Hints() {
        }

        public Bip39Hints(String[] words) {
            this.words = words;
        }
    }

    /* loaded from: classes3.dex */
    public static class Config extends Object {
        public static final int CONSTRUCTOR = -1538391496;
        public String blockchainName;
        public String config;
        public boolean ignoreCache;
        public boolean useCallbacksForNetwork;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public Config() {
        }

        public Config(String config, String blockchainName, boolean useCallbacksForNetwork, boolean ignoreCache) {
            this.config = config;
            this.blockchainName = blockchainName;
            this.useCallbacksForNetwork = useCallbacksForNetwork;
            this.ignoreCache = ignoreCache;
        }
    }

    /* loaded from: classes3.dex */
    public static class ConfigInfo extends Object {
        public static final int CONSTRUCTOR = 687887871;
        public TvmCell config;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ConfigInfo() {
        }

        public ConfigInfo(TvmCell config) {
            this.config = config;
        }
    }

    /* loaded from: classes3.dex */
    public static class Data extends Object {
        public static final int CONSTRUCTOR = -414733967;
        public byte[] bytes;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public Data() {
        }

        public Data(byte[] bytes) {
            this.bytes = bytes;
        }
    }

    /* loaded from: classes3.dex */
    public static class Error extends Object {
        public static final int CONSTRUCTOR = -1679978726;
        public int code;
        public String message;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public Error() {
        }

        public Error(int code, String message) {
            this.code = code;
            this.message = message;
        }
    }

    /* loaded from: classes3.dex */
    public static class ExportedEncryptedKey extends Object {
        public static final int CONSTRUCTOR = 2024406612;
        public byte[] data;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ExportedEncryptedKey() {
        }

        public ExportedEncryptedKey(byte[] data) {
            this.data = data;
        }
    }

    /* loaded from: classes3.dex */
    public static class ExportedKey extends Object {
        public static final int CONSTRUCTOR = -1449248297;
        public String[] wordList;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ExportedKey() {
        }

        public ExportedKey(String[] wordList) {
            this.wordList = wordList;
        }
    }

    /* loaded from: classes3.dex */
    public static class ExportedPemKey extends Object {
        public static final int CONSTRUCTOR = 1425473725;
        public String pem;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ExportedPemKey() {
        }

        public ExportedPemKey(String pem) {
            this.pem = pem;
        }
    }

    /* loaded from: classes3.dex */
    public static class ExportedUnencryptedKey extends Object {
        public static final int CONSTRUCTOR = 730045160;
        public byte[] data;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ExportedUnencryptedKey() {
        }

        public ExportedUnencryptedKey(byte[] data) {
            this.data = data;
        }
    }

    /* loaded from: classes3.dex */
    public static class Fees extends Object {
        public static final int CONSTRUCTOR = 1676273340;
        public long fwdFee;
        public long gasFee;
        public long inFwdFee;
        public long storageFee;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public Fees() {
        }

        public Fees(long inFwdFee, long storageFee, long gasFee, long fwdFee) {
            this.inFwdFee = inFwdFee;
            this.storageFee = storageFee;
            this.gasFee = gasFee;
            this.fwdFee = fwdFee;
        }
    }

    /* loaded from: classes3.dex */
    public static class FullAccountState extends Object {
        public static final int CONSTRUCTOR = 1456618057;
        public AccountState accountState;
        public AccountAddress address;
        public long balance;
        public TonBlockIdExt blockId;
        public InternalTransactionId lastTransactionId;
        public int revision;
        public long syncUtime;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public FullAccountState() {
        }

        public FullAccountState(AccountAddress address, long balance, InternalTransactionId lastTransactionId, TonBlockIdExt blockId, long syncUtime, AccountState accountState, int revision) {
            this.address = address;
            this.balance = balance;
            this.lastTransactionId = lastTransactionId;
            this.blockId = blockId;
            this.syncUtime = syncUtime;
            this.accountState = accountState;
            this.revision = revision;
        }
    }

    /* loaded from: classes3.dex */
    public static class RawInitialAccountState extends InitialAccountState {
        public static final int CONSTRUCTOR = -337945529;
        public byte[] code;
        public byte[] data;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RawInitialAccountState() {
        }

        public RawInitialAccountState(byte[] code, byte[] data) {
            this.code = code;
            this.data = data;
        }
    }

    /* loaded from: classes3.dex */
    public static class WalletV3InitialAccountState extends InitialAccountState {
        public static final int CONSTRUCTOR = -118074048;
        public String publicKey;
        public long walletId;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public WalletV3InitialAccountState() {
        }

        public WalletV3InitialAccountState(String publicKey, long walletId) {
            this.publicKey = publicKey;
            this.walletId = walletId;
        }
    }

    /* loaded from: classes3.dex */
    public static class WalletHighloadV1InitialAccountState extends InitialAccountState {
        public static final int CONSTRUCTOR = -327901626;
        public String publicKey;
        public long walletId;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public WalletHighloadV1InitialAccountState() {
        }

        public WalletHighloadV1InitialAccountState(String publicKey, long walletId) {
            this.publicKey = publicKey;
            this.walletId = walletId;
        }
    }

    /* loaded from: classes3.dex */
    public static class WalletHighloadV2InitialAccountState extends InitialAccountState {
        public static final int CONSTRUCTOR = 1966373161;
        public String publicKey;
        public long walletId;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public WalletHighloadV2InitialAccountState() {
        }

        public WalletHighloadV2InitialAccountState(String publicKey, long walletId) {
            this.publicKey = publicKey;
            this.walletId = walletId;
        }
    }

    /* loaded from: classes3.dex */
    public static class RwalletInitialAccountState extends InitialAccountState {
        public static final int CONSTRUCTOR = 1169755156;
        public String initPublicKey;
        public String publicKey;
        public long walletId;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RwalletInitialAccountState() {
        }

        public RwalletInitialAccountState(String initPublicKey, String publicKey, long walletId) {
            this.initPublicKey = initPublicKey;
            this.publicKey = publicKey;
            this.walletId = walletId;
        }
    }

    /* loaded from: classes3.dex */
    public static class DnsInitialAccountState extends InitialAccountState {
        public static final int CONSTRUCTOR = 1842062527;
        public String publicKey;
        public long walletId;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public DnsInitialAccountState() {
        }

        public DnsInitialAccountState(String publicKey, long walletId) {
            this.publicKey = publicKey;
            this.walletId = walletId;
        }
    }

    /* loaded from: classes3.dex */
    public static class PchanInitialAccountState extends InitialAccountState {
        public static final int CONSTRUCTOR = -1304552124;
        public PchanConfig config;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public PchanInitialAccountState() {
        }

        public PchanInitialAccountState(PchanConfig config) {
            this.config = config;
        }
    }

    /* loaded from: classes3.dex */
    public static class InputKeyRegular extends InputKey {
        public static final int CONSTRUCTOR = -555399522;
        public Key key;
        public byte[] localPassword;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public InputKeyRegular() {
        }

        public InputKeyRegular(Key key, byte[] localPassword) {
            this.key = key;
            this.localPassword = localPassword;
        }
    }

    /* loaded from: classes3.dex */
    public static class Key extends Object {
        public static final int CONSTRUCTOR = -1978362923;
        public String publicKey;
        public byte[] secret;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public Key() {
        }

        public Key(String publicKey, byte[] secret) {
            this.publicKey = publicKey;
            this.secret = secret;
        }
    }

    /* loaded from: classes3.dex */
    public static class KeyStoreTypeDirectory extends KeyStoreType {
        public static final int CONSTRUCTOR = -378990038;
        public String directory;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public KeyStoreTypeDirectory() {
        }

        public KeyStoreTypeDirectory(String directory) {
            this.directory = directory;
        }
    }

    /* loaded from: classes3.dex */
    public static class LogStreamFile extends LogStream {
        public static final int CONSTRUCTOR = -1880085930;
        public long maxFileSize;
        public String path;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public LogStreamFile() {
        }

        public LogStreamFile(String path, long maxFileSize) {
            this.path = path;
            this.maxFileSize = maxFileSize;
        }
    }

    /* loaded from: classes3.dex */
    public static class LogTags extends Object {
        public static final int CONSTRUCTOR = -1604930601;
        public String[] tags;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public LogTags() {
        }

        public LogTags(String[] tags) {
            this.tags = tags;
        }
    }

    /* loaded from: classes3.dex */
    public static class LogVerbosityLevel extends Object {
        public static final int CONSTRUCTOR = 1734624234;
        public int verbosityLevel;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public LogVerbosityLevel() {
        }

        public LogVerbosityLevel(int verbosityLevel) {
            this.verbosityLevel = verbosityLevel;
        }
    }

    /* loaded from: classes3.dex */
    public static class Options extends Object {
        public static final int CONSTRUCTOR = -1924388359;
        public Config config;
        public KeyStoreType keystoreType;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public Options() {
        }

        public Options(Config config, KeyStoreType keystoreType) {
            this.config = config;
            this.keystoreType = keystoreType;
        }
    }

    /* loaded from: classes3.dex */
    public static class SyncStateInProgress extends SyncState {
        public static final int CONSTRUCTOR = 107726023;
        public int currentSeqno;
        public int fromSeqno;
        public int toSeqno;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public SyncStateInProgress() {
        }

        public SyncStateInProgress(int fromSeqno, int toSeqno, int currentSeqno) {
            this.fromSeqno = fromSeqno;
            this.toSeqno = toSeqno;
            this.currentSeqno = currentSeqno;
        }
    }

    /* loaded from: classes3.dex */
    public static class UnpackedAccountAddress extends Object {
        public static final int CONSTRUCTOR = 1892946998;
        public byte[] addr;
        public boolean bounceable;
        public boolean testnet;
        public int workchainId;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public UnpackedAccountAddress() {
        }

        public UnpackedAccountAddress(int workchainId, boolean bounceable, boolean testnet, byte[] addr) {
            this.workchainId = workchainId;
            this.bounceable = bounceable;
            this.testnet = testnet;
            this.addr = addr;
        }
    }

    /* loaded from: classes3.dex */
    public static class UpdateSendLiteServerQuery extends Update {
        public static final int CONSTRUCTOR = -1555130916;
        public byte[] data;

        /* renamed from: id */
        public long f424id;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public UpdateSendLiteServerQuery() {
        }

        public UpdateSendLiteServerQuery(long id, byte[] data) {
            this.f424id = id;
            this.data = data;
        }
    }

    /* loaded from: classes3.dex */
    public static class UpdateSyncState extends Update {
        public static final int CONSTRUCTOR = 1204298718;
        public SyncState syncState;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public UpdateSyncState() {
        }

        public UpdateSyncState(SyncState syncState) {
            this.syncState = syncState;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksAccountTransactionId extends Object {
        public static final int CONSTRUCTOR = -872996220;
        public byte[] account;

        /* renamed from: lt */
        public long f391lt;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public BlocksAccountTransactionId() {
        }

        public BlocksAccountTransactionId(byte[] account, long lt) {
            this.account = account;
            this.f391lt = lt;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksBlockLinkBack extends Object {
        public static final int CONSTRUCTOR = 1099726901;
        public byte[] destProof;
        public TonBlockIdExt from;
        public byte[] proof;
        public byte[] stateProof;

        /* renamed from: to */
        public TonBlockIdExt f392to;
        public boolean toKeyBlock;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public BlocksBlockLinkBack() {
        }

        public BlocksBlockLinkBack(boolean toKeyBlock, TonBlockIdExt from, TonBlockIdExt to, byte[] destProof, byte[] proof, byte[] stateProof) {
            this.toKeyBlock = toKeyBlock;
            this.from = from;
            this.f392to = to;
            this.destProof = destProof;
            this.proof = proof;
            this.stateProof = stateProof;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksBlockSignatures extends Object {
        public static final int CONSTRUCTOR = -402531429;

        /* renamed from: id */
        public TonBlockIdExt f393id;
        public BlocksSignature[] signatures;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public BlocksBlockSignatures() {
        }

        public BlocksBlockSignatures(TonBlockIdExt id, BlocksSignature[] signatures) {
            this.f393id = id;
            this.signatures = signatures;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksHeader extends Object {
        public static final int CONSTRUCTOR = 1479116386;
        public boolean afterMerge;
        public boolean afterSplit;
        public boolean beforeSplit;
        public int catchainSeqno;
        public long endLt;
        public int flags;
        public long genUtime;
        public int globalId;

        /* renamed from: id */
        public TonBlockIdExt f398id;
        public boolean isKeyBlock;
        public int minRefMcSeqno;
        public TonBlockIdExt[] prevBlocks;
        public int prevKeyBlockSeqno;
        public long startLt;
        public int validatorListHashShort;
        public int version;
        public int vertSeqno;
        public boolean wantMerge;
        public boolean wantSplit;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public BlocksHeader() {
        }

        public BlocksHeader(TonBlockIdExt id, int globalId, int version, int flags, boolean afterMerge, boolean afterSplit, boolean beforeSplit, boolean wantMerge, boolean wantSplit, int validatorListHashShort, int catchainSeqno, int minRefMcSeqno, boolean isKeyBlock, int prevKeyBlockSeqno, long startLt, long endLt, long genUtime, int vertSeqno, TonBlockIdExt[] prevBlocks) {
            this.f398id = id;
            this.globalId = globalId;
            this.version = version;
            this.flags = flags;
            this.afterMerge = afterMerge;
            this.afterSplit = afterSplit;
            this.beforeSplit = beforeSplit;
            this.wantMerge = wantMerge;
            this.wantSplit = wantSplit;
            this.validatorListHashShort = validatorListHashShort;
            this.catchainSeqno = catchainSeqno;
            this.minRefMcSeqno = minRefMcSeqno;
            this.isKeyBlock = isKeyBlock;
            this.prevKeyBlockSeqno = prevKeyBlockSeqno;
            this.startLt = startLt;
            this.endLt = endLt;
            this.genUtime = genUtime;
            this.vertSeqno = vertSeqno;
            this.prevBlocks = prevBlocks;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksMasterchainInfo extends Object {
        public static final int CONSTRUCTOR = 835339083;
        public TonBlockIdExt init;
        public TonBlockIdExt last;
        public byte[] stateRootHash;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public BlocksMasterchainInfo() {
        }

        public BlocksMasterchainInfo(TonBlockIdExt last, byte[] stateRootHash, TonBlockIdExt init) {
            this.last = last;
            this.stateRootHash = stateRootHash;
            this.init = init;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksShardBlockLink extends Object {
        public static final int CONSTRUCTOR = -1495263895;

        /* renamed from: id */
        public TonBlockIdExt f401id;
        public byte[] proof;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public BlocksShardBlockLink() {
        }

        public BlocksShardBlockLink(TonBlockIdExt id, byte[] proof) {
            this.f401id = id;
            this.proof = proof;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksShardBlockProof extends Object {
        public static final int CONSTRUCTOR = -69836973;
        public TonBlockIdExt from;
        public BlocksShardBlockLink[] links;
        public TonBlockIdExt mcId;
        public BlocksBlockLinkBack[] mcProof;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public BlocksShardBlockProof() {
        }

        public BlocksShardBlockProof(TonBlockIdExt from, TonBlockIdExt mcId, BlocksShardBlockLink[] links, BlocksBlockLinkBack[] mcProof) {
            this.from = from;
            this.mcId = mcId;
            this.links = links;
            this.mcProof = mcProof;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksShards extends Object {
        public static final int CONSTRUCTOR = 2069473610;
        public TonBlockIdExt[] shards;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public BlocksShards() {
        }

        public BlocksShards(TonBlockIdExt[] shards) {
            this.shards = shards;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksSignature extends Object {
        public static final int CONSTRUCTOR = -1223522111;
        public byte[] nodeIdShort;
        public byte[] signature;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public BlocksSignature() {
        }

        public BlocksSignature(byte[] nodeIdShort, byte[] signature) {
            this.nodeIdShort = nodeIdShort;
            this.signature = signature;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksTransactions extends Object {
        public static final int CONSTRUCTOR = -1922305900;

        /* renamed from: id */
        public TonBlockIdExt f403id;
        public boolean incomplete;
        public int reqCount;
        public BlocksShortTxId[] transactions;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public BlocksTransactions() {
        }

        public BlocksTransactions(TonBlockIdExt id, int reqCount, boolean incomplete, BlocksShortTxId[] transactions) {
            this.f403id = id;
            this.reqCount = reqCount;
            this.incomplete = incomplete;
            this.transactions = transactions;
        }
    }

    /* loaded from: classes3.dex */
    public static class DnsActionDelete extends DnsAction {
        public static final int CONSTRUCTOR = 1141342033;
        public byte[] category;
        public String name;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public DnsActionDelete() {
        }

        public DnsActionDelete(String name, byte[] category) {
            this.name = name;
            this.category = category;
        }
    }

    /* loaded from: classes3.dex */
    public static class DnsActionSet extends DnsAction {
        public static final int CONSTRUCTOR = -1374965309;
        public DnsEntry entry;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public DnsActionSet() {
        }

        public DnsActionSet(DnsEntry entry) {
            this.entry = entry;
        }
    }

    /* loaded from: classes3.dex */
    public static class DnsEntry extends Object {
        public static final int CONSTRUCTOR = 505104294;
        public byte[] category;
        public DnsEntryData entry;
        public String name;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public DnsEntry() {
        }

        public DnsEntry(String name, byte[] category, DnsEntryData entry) {
            this.name = name;
            this.category = category;
            this.entry = entry;
        }
    }

    /* loaded from: classes3.dex */
    public static class DnsEntryDataUnknown extends DnsEntryData {
        public static final int CONSTRUCTOR = -1285893248;
        public byte[] bytes;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public DnsEntryDataUnknown() {
        }

        public DnsEntryDataUnknown(byte[] bytes) {
            this.bytes = bytes;
        }
    }

    /* loaded from: classes3.dex */
    public static class DnsEntryDataText extends DnsEntryData {
        public static final int CONSTRUCTOR = -792485614;
        public String text;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public DnsEntryDataText() {
        }

        public DnsEntryDataText(String text) {
            this.text = text;
        }
    }

    /* loaded from: classes3.dex */
    public static class DnsEntryDataNextResolver extends DnsEntryData {
        public static final int CONSTRUCTOR = 330382792;
        public AccountAddress resolver;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public DnsEntryDataNextResolver() {
        }

        public DnsEntryDataNextResolver(AccountAddress resolver) {
            this.resolver = resolver;
        }
    }

    /* loaded from: classes3.dex */
    public static class DnsEntryDataSmcAddress extends DnsEntryData {
        public static final int CONSTRUCTOR = -1759937982;
        public AccountAddress smcAddress;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public DnsEntryDataSmcAddress() {
        }

        public DnsEntryDataSmcAddress(AccountAddress smcAddress) {
            this.smcAddress = smcAddress;
        }
    }

    /* loaded from: classes3.dex */
    public static class DnsEntryDataAdnlAddress extends DnsEntryData {
        public static final int CONSTRUCTOR = -1114064368;
        public AdnlAddress adnlAddress;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public DnsEntryDataAdnlAddress() {
        }

        public DnsEntryDataAdnlAddress(AdnlAddress adnlAddress) {
            this.adnlAddress = adnlAddress;
        }
    }

    /* loaded from: classes3.dex */
    public static class DnsResolved extends Object {
        public static final int CONSTRUCTOR = 2090272150;
        public DnsEntry[] entries;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public DnsResolved() {
        }

        public DnsResolved(DnsEntry[] entries) {
            this.entries = entries;
        }
    }

    /* loaded from: classes3.dex */
    public static class TonBlockId extends Object {
        public static final int CONSTRUCTOR = -1185382494;
        public int seqno;
        public long shard;
        public int workchain;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public TonBlockId() {
        }

        public TonBlockId(int workchain, long shard, int seqno) {
            this.workchain = workchain;
            this.shard = shard;
            this.seqno = seqno;
        }
    }

    /* loaded from: classes3.dex */
    public static class InternalTransactionId extends Object {
        public static final int CONSTRUCTOR = -989527262;
        public byte[] hash;

        /* renamed from: lt */
        public long f405lt;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public InternalTransactionId() {
        }

        public InternalTransactionId(long lt, byte[] hash) {
            this.f405lt = lt;
            this.hash = hash;
        }
    }

    /* loaded from: classes3.dex */
    public static class LiteServerInfo extends Object {
        public static final int CONSTRUCTOR = -1250165133;
        public long capabilities;
        public long now;
        public int version;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public LiteServerInfo() {
        }

        public LiteServerInfo(long now, int version, long capabilities) {
            this.now = now;
            this.version = version;
            this.capabilities = capabilities;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksShortTxId extends Object {
        public static final int CONSTRUCTOR = 487976773;
        public byte[] account;
        public byte[] hash;

        /* renamed from: lt */
        public long f402lt;
        public int mode;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public BlocksShortTxId() {
        }

        public BlocksShortTxId(int mode, byte[] account, long lt, byte[] hash) {
            this.mode = mode;
            this.account = account;
            this.f402lt = lt;
            this.hash = hash;
        }
    }

    /* loaded from: classes3.dex */
    public static class MsgDataRaw extends MsgData {
        public static final int CONSTRUCTOR = -1928962698;
        public byte[] body;
        public byte[] initState;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public MsgDataRaw() {
        }

        public MsgDataRaw(byte[] body, byte[] initState) {
            this.body = body;
            this.initState = initState;
        }
    }

    /* loaded from: classes3.dex */
    public static class MsgDataText extends MsgData {
        public static final int CONSTRUCTOR = -341560688;
        public byte[] text;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public MsgDataText() {
        }

        public MsgDataText(byte[] text) {
            this.text = text;
        }
    }

    /* loaded from: classes3.dex */
    public static class MsgDataDecryptedText extends MsgData {
        public static final int CONSTRUCTOR = -1289133895;
        public byte[] text;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public MsgDataDecryptedText() {
        }

        public MsgDataDecryptedText(byte[] text) {
            this.text = text;
        }
    }

    /* loaded from: classes3.dex */
    public static class MsgDataEncryptedText extends MsgData {
        public static final int CONSTRUCTOR = -296612902;
        public byte[] text;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public MsgDataEncryptedText() {
        }

        public MsgDataEncryptedText(byte[] text) {
            this.text = text;
        }
    }

    /* loaded from: classes3.dex */
    public static class MsgDataDecrypted extends Object {
        public static final int CONSTRUCTOR = 195649769;
        public MsgData data;
        public byte[] proof;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public MsgDataDecrypted() {
        }

        public MsgDataDecrypted(byte[] proof, MsgData data) {
            this.proof = proof;
            this.data = data;
        }
    }

    /* loaded from: classes3.dex */
    public static class MsgDataDecryptedArray extends Object {
        public static final int CONSTRUCTOR = -480491767;
        public MsgDataDecrypted[] elements;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public MsgDataDecryptedArray() {
        }

        public MsgDataDecryptedArray(MsgDataDecrypted[] elements) {
            this.elements = elements;
        }
    }

    /* loaded from: classes3.dex */
    public static class MsgDataEncrypted extends Object {
        public static final int CONSTRUCTOR = 564215121;
        public MsgData data;
        public AccountAddress source;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public MsgDataEncrypted() {
        }

        public MsgDataEncrypted(AccountAddress source, MsgData data) {
            this.source = source;
            this.data = data;
        }
    }

    /* loaded from: classes3.dex */
    public static class MsgDataEncryptedArray extends Object {
        public static final int CONSTRUCTOR = 608655794;
        public MsgDataEncrypted[] elements;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public MsgDataEncryptedArray() {
        }

        public MsgDataEncryptedArray(MsgDataEncrypted[] elements) {
            this.elements = elements;
        }
    }

    /* loaded from: classes3.dex */
    public static class MsgMessage extends Object {
        public static final int CONSTRUCTOR = 807907444;
        public long amount;
        public MsgData data;
        public AccountAddress destination;
        public String publicKey;
        public int sendMode;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public MsgMessage() {
        }

        public MsgMessage(AccountAddress destination, String publicKey, long amount, MsgData data, int sendMode) {
            this.destination = destination;
            this.publicKey = publicKey;
            this.amount = amount;
            this.data = data;
            this.sendMode = sendMode;
        }
    }

    /* loaded from: classes3.dex */
    public static class OptionsConfigInfo extends Object {
        public static final int CONSTRUCTOR = 129457942;
        public String defaultRwalletInitPublicKey;
        public long defaultWalletId;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public OptionsConfigInfo() {
        }

        public OptionsConfigInfo(long defaultWalletId, String defaultRwalletInitPublicKey) {
            this.defaultWalletId = defaultWalletId;
            this.defaultRwalletInitPublicKey = defaultRwalletInitPublicKey;
        }
    }

    /* loaded from: classes3.dex */
    public static class OptionsInfo extends Object {
        public static final int CONSTRUCTOR = -64676736;
        public OptionsConfigInfo configInfo;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public OptionsInfo() {
        }

        public OptionsInfo(OptionsConfigInfo configInfo) {
            this.configInfo = configInfo;
        }
    }

    /* loaded from: classes3.dex */
    public static class PchanActionInit extends PchanAction {
        public static final int CONSTRUCTOR = 439088778;
        public long incA;
        public long incB;
        public long minA;
        public long minB;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public PchanActionInit() {
        }

        public PchanActionInit(long incA, long incB, long minA, long minB) {
            this.incA = incA;
            this.incB = incB;
            this.minA = minA;
            this.minB = minB;
        }
    }

    /* loaded from: classes3.dex */
    public static class PchanActionClose extends PchanAction {
        public static final int CONSTRUCTOR = 1671187222;
        public long extraA;
        public long extraB;
        public PchanPromise promise;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public PchanActionClose() {
        }

        public PchanActionClose(long extraA, long extraB, PchanPromise promise) {
            this.extraA = extraA;
            this.extraB = extraB;
            this.promise = promise;
        }
    }

    /* loaded from: classes3.dex */
    public static class PchanConfig extends Object {
        public static final int CONSTRUCTOR = -2071530442;
        public AccountAddress aliceAddress;
        public String alicePublicKey;
        public AccountAddress bobAddress;
        public String bobPublicKey;
        public long channelId;
        public int closeTimeout;
        public int initTimeout;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public PchanConfig() {
        }

        public PchanConfig(String alicePublicKey, AccountAddress aliceAddress, String bobPublicKey, AccountAddress bobAddress, int initTimeout, int closeTimeout, long channelId) {
            this.alicePublicKey = alicePublicKey;
            this.aliceAddress = aliceAddress;
            this.bobPublicKey = bobPublicKey;
            this.bobAddress = bobAddress;
            this.initTimeout = initTimeout;
            this.closeTimeout = closeTimeout;
            this.channelId = channelId;
        }
    }

    /* loaded from: classes3.dex */
    public static class PchanPromise extends Object {
        public static final int CONSTRUCTOR = -1576102819;
        public long channelId;
        public long promiseA;
        public long promiseB;
        public byte[] signature;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public PchanPromise() {
        }

        public PchanPromise(byte[] signature, long promiseA, long promiseB, long channelId) {
            this.signature = signature;
            this.promiseA = promiseA;
            this.promiseB = promiseB;
            this.channelId = channelId;
        }
    }

    /* loaded from: classes3.dex */
    public static class PchanStateInit extends PchanState {
        public static final int CONSTRUCTOR = -1188426504;

        /* renamed from: A */
        public long f410A;

        /* renamed from: B */
        public long f411B;
        public long expireAt;
        public long minA;
        public long minB;
        public boolean signedA;
        public boolean signedB;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public PchanStateInit() {
        }

        public PchanStateInit(boolean signedA, boolean signedB, long minA, long minB, long expireAt, long A, long B) {
            this.signedA = signedA;
            this.signedB = signedB;
            this.minA = minA;
            this.minB = minB;
            this.expireAt = expireAt;
            this.f410A = A;
            this.f411B = B;
        }
    }

    /* loaded from: classes3.dex */
    public static class PchanStateClose extends PchanState {
        public static final int CONSTRUCTOR = 887226867;

        /* renamed from: A */
        public long f408A;

        /* renamed from: B */
        public long f409B;
        public long expireAt;
        public long minA;
        public long minB;
        public boolean signedA;
        public boolean signedB;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public PchanStateClose() {
        }

        public PchanStateClose(boolean signedA, boolean signedB, long minA, long minB, long expireAt, long A, long B) {
            this.signedA = signedA;
            this.signedB = signedB;
            this.minA = minA;
            this.minB = minB;
            this.expireAt = expireAt;
            this.f408A = A;
            this.f409B = B;
        }
    }

    /* loaded from: classes3.dex */
    public static class PchanStatePayout extends PchanState {
        public static final int CONSTRUCTOR = 664671303;

        /* renamed from: A */
        public long f412A;

        /* renamed from: B */
        public long f413B;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public PchanStatePayout() {
        }

        public PchanStatePayout(long A, long B) {
            this.f412A = A;
            this.f413B = B;
        }
    }

    /* loaded from: classes3.dex */
    public static class QueryFees extends Object {
        public static final int CONSTRUCTOR = 1614616510;
        public Fees[] destinationFees;
        public Fees sourceFees;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public QueryFees() {
        }

        public QueryFees(Fees sourceFees, Fees[] destinationFees) {
            this.sourceFees = sourceFees;
            this.destinationFees = destinationFees;
        }
    }

    /* loaded from: classes3.dex */
    public static class QueryInfo extends Object {
        public static final int CONSTRUCTOR = 1451875440;
        public byte[] body;
        public byte[] bodyHash;

        /* renamed from: id */
        public long f417id;
        public byte[] initState;
        public long validUntil;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public QueryInfo() {
        }

        public QueryInfo(long id, long validUntil, byte[] bodyHash, byte[] body, byte[] initState) {
            this.f417id = id;
            this.validUntil = validUntil;
            this.bodyHash = bodyHash;
            this.body = body;
            this.initState = initState;
        }
    }

    /* loaded from: classes3.dex */
    public static class RawExtMessageInfo extends Object {
        public static final int CONSTRUCTOR = 874086318;
        public byte[] hash;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RawExtMessageInfo() {
        }

        public RawExtMessageInfo(byte[] hash) {
            this.hash = hash;
        }
    }

    /* loaded from: classes3.dex */
    public static class RawFullAccountState extends Object {
        public static final int CONSTRUCTOR = -1465398385;
        public long balance;
        public TonBlockIdExt blockId;
        public byte[] code;
        public byte[] data;
        public byte[] frozenHash;
        public InternalTransactionId lastTransactionId;
        public long syncUtime;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RawFullAccountState() {
        }

        public RawFullAccountState(long balance, byte[] code, byte[] data, InternalTransactionId lastTransactionId, TonBlockIdExt blockId, byte[] frozenHash, long syncUtime) {
            this.balance = balance;
            this.code = code;
            this.data = data;
            this.lastTransactionId = lastTransactionId;
            this.blockId = blockId;
            this.frozenHash = frozenHash;
            this.syncUtime = syncUtime;
        }
    }

    /* loaded from: classes3.dex */
    public static class RawMessage extends Object {
        public static final int CONSTRUCTOR = 1368093263;
        public byte[] bodyHash;
        public long createdLt;
        public AccountAddress destination;
        public long fwdFee;
        public long ihrFee;
        public MsgData msgData;
        public AccountAddress source;
        public long value;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RawMessage() {
        }

        public RawMessage(AccountAddress source, AccountAddress destination, long value, long fwdFee, long ihrFee, long createdLt, byte[] bodyHash, MsgData msgData) {
            this.source = source;
            this.destination = destination;
            this.value = value;
            this.fwdFee = fwdFee;
            this.ihrFee = ihrFee;
            this.createdLt = createdLt;
            this.bodyHash = bodyHash;
            this.msgData = msgData;
        }
    }

    /* loaded from: classes3.dex */
    public static class RawTransaction extends Object {
        public static final int CONSTRUCTOR = 1887601793;
        public byte[] data;
        public long fee;
        public RawMessage inMsg;
        public long otherFee;
        public RawMessage[] outMsgs;
        public long storageFee;
        public InternalTransactionId transactionId;
        public long utime;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RawTransaction() {
        }

        public RawTransaction(long utime, byte[] data, InternalTransactionId transactionId, long fee, long storageFee, long otherFee, RawMessage inMsg, RawMessage[] outMsgs) {
            this.utime = utime;
            this.data = data;
            this.transactionId = transactionId;
            this.fee = fee;
            this.storageFee = storageFee;
            this.otherFee = otherFee;
            this.inMsg = inMsg;
            this.outMsgs = outMsgs;
        }
    }

    /* loaded from: classes3.dex */
    public static class RawTransactions extends Object {
        public static final int CONSTRUCTOR = -2063931155;
        public InternalTransactionId previousTransactionId;
        public RawTransaction[] transactions;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RawTransactions() {
        }

        public RawTransactions(RawTransaction[] transactions, InternalTransactionId previousTransactionId) {
            this.transactions = transactions;
            this.previousTransactionId = previousTransactionId;
        }
    }

    /* loaded from: classes3.dex */
    public static class RwalletActionInit extends Object {
        public static final int CONSTRUCTOR = 624147819;
        public RwalletConfig config;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RwalletActionInit() {
        }

        public RwalletActionInit(RwalletConfig config) {
            this.config = config;
        }
    }

    /* loaded from: classes3.dex */
    public static class RwalletConfig extends Object {
        public static final int CONSTRUCTOR = -85490534;
        public RwalletLimit[] limits;
        public long startAt;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RwalletConfig() {
        }

        public RwalletConfig(long startAt, RwalletLimit[] limits) {
            this.startAt = startAt;
            this.limits = limits;
        }
    }

    /* loaded from: classes3.dex */
    public static class RwalletLimit extends Object {
        public static final int CONSTRUCTOR = 1222571646;
        public int seconds;
        public long value;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RwalletLimit() {
        }

        public RwalletLimit(int seconds, long value) {
            this.seconds = seconds;
            this.value = value;
        }
    }

    /* loaded from: classes3.dex */
    public static class SmcInfo extends Object {
        public static final int CONSTRUCTOR = 1134270012;

        /* renamed from: id */
        public long f422id;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public SmcInfo() {
        }

        public SmcInfo(long id) {
            this.f422id = id;
        }
    }

    /* loaded from: classes3.dex */
    public static class SmcLibraryEntry extends Object {
        public static final int CONSTRUCTOR = -1546268148;
        public byte[] data;
        public byte[] hash;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public SmcLibraryEntry() {
        }

        public SmcLibraryEntry(byte[] hash, byte[] data) {
            this.hash = hash;
            this.data = data;
        }
    }

    /* loaded from: classes3.dex */
    public static class SmcLibraryResult extends Object {
        public static final int CONSTRUCTOR = 203930622;
        public SmcLibraryEntry[] result;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public SmcLibraryResult() {
        }

        public SmcLibraryResult(SmcLibraryEntry[] result) {
            this.result = result;
        }
    }

    /* loaded from: classes3.dex */
    public static class SmcMethodIdNumber extends SmcMethodId {
        public static final int CONSTRUCTOR = -1541162500;
        public int number;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public SmcMethodIdNumber() {
        }

        public SmcMethodIdNumber(int number) {
            this.number = number;
        }
    }

    /* loaded from: classes3.dex */
    public static class SmcMethodIdName extends SmcMethodId {
        public static final int CONSTRUCTOR = -249036908;
        public String name;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public SmcMethodIdName() {
        }

        public SmcMethodIdName(String name) {
            this.name = name;
        }
    }

    /* loaded from: classes3.dex */
    public static class SmcRunResult extends Object {
        public static final int CONSTRUCTOR = 1413805043;
        public int exitCode;
        public long gasUsed;
        public TvmStackEntry[] stack;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public SmcRunResult() {
        }

        public SmcRunResult(long gasUsed, TvmStackEntry[] stack, int exitCode) {
            this.gasUsed = gasUsed;
            this.stack = stack;
            this.exitCode = exitCode;
        }
    }

    /* loaded from: classes3.dex */
    public static class TonBlockIdExt extends Object {
        public static final int CONSTRUCTOR = 2031156378;
        public byte[] fileHash;
        public byte[] rootHash;
        public int seqno;
        public long shard;
        public int workchain;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public TonBlockIdExt() {
        }

        public TonBlockIdExt(int workchain, long shard, int seqno, byte[] rootHash, byte[] fileHash) {
            this.workchain = workchain;
            this.shard = shard;
            this.seqno = seqno;
            this.rootHash = rootHash;
            this.fileHash = fileHash;
        }
    }

    /* loaded from: classes3.dex */
    public static class TvmCell extends Object {
        public static final int CONSTRUCTOR = -413424735;
        public byte[] bytes;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public TvmCell() {
        }

        public TvmCell(byte[] bytes) {
            this.bytes = bytes;
        }
    }

    /* loaded from: classes3.dex */
    public static class TvmList extends Object {
        public static final int CONSTRUCTOR = 1270320392;
        public TvmStackEntry[] elements;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public TvmList() {
        }

        public TvmList(TvmStackEntry[] elements) {
            this.elements = elements;
        }
    }

    /* loaded from: classes3.dex */
    public static class TvmNumberDecimal extends Object {
        public static final int CONSTRUCTOR = 1172477619;
        public String number;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public TvmNumberDecimal() {
        }

        public TvmNumberDecimal(String number) {
            this.number = number;
        }
    }

    /* loaded from: classes3.dex */
    public static class TvmSlice extends Object {
        public static final int CONSTRUCTOR = 537299687;
        public byte[] bytes;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public TvmSlice() {
        }

        public TvmSlice(byte[] bytes) {
            this.bytes = bytes;
        }
    }

    /* loaded from: classes3.dex */
    public static class TvmStackEntrySlice extends TvmStackEntry {
        public static final int CONSTRUCTOR = 1395485477;
        public TvmSlice slice;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public TvmStackEntrySlice() {
        }

        public TvmStackEntrySlice(TvmSlice slice) {
            this.slice = slice;
        }
    }

    /* loaded from: classes3.dex */
    public static class TvmStackEntryCell extends TvmStackEntry {
        public static final int CONSTRUCTOR = 1303473952;
        public TvmCell cell;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public TvmStackEntryCell() {
        }

        public TvmStackEntryCell(TvmCell cell) {
            this.cell = cell;
        }
    }

    /* loaded from: classes3.dex */
    public static class TvmStackEntryNumber extends TvmStackEntry {
        public static final int CONSTRUCTOR = 1358642622;
        public TvmNumberDecimal number;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public TvmStackEntryNumber() {
        }

        public TvmStackEntryNumber(TvmNumberDecimal number) {
            this.number = number;
        }
    }

    /* loaded from: classes3.dex */
    public static class TvmStackEntryTuple extends TvmStackEntry {
        public static final int CONSTRUCTOR = -157391908;
        public TvmTuple tuple;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public TvmStackEntryTuple() {
        }

        public TvmStackEntryTuple(TvmTuple tuple) {
            this.tuple = tuple;
        }
    }

    /* loaded from: classes3.dex */
    public static class TvmStackEntryList extends TvmStackEntry {
        public static final int CONSTRUCTOR = -1186714229;
        public TvmList list;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public TvmStackEntryList() {
        }

        public TvmStackEntryList(TvmList list) {
            this.list = list;
        }
    }

    /* loaded from: classes3.dex */
    public static class TvmTuple extends Object {
        public static final int CONSTRUCTOR = -1363953053;
        public TvmStackEntry[] elements;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public TvmTuple() {
        }

        public TvmTuple(TvmStackEntry[] elements) {
            this.elements = elements;
        }
    }

    /* loaded from: classes3.dex */
    public static class AddLogMessage extends Function {
        public static final int CONSTRUCTOR = 1597427692;
        public String text;
        public int verbosityLevel;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public AddLogMessage() {
        }

        public AddLogMessage(int verbosityLevel, String text) {
            this.verbosityLevel = verbosityLevel;
            this.text = text;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksGetBlockHeader extends Function {
        public static final int CONSTRUCTOR = 1915102018;

        /* renamed from: id */
        public TonBlockIdExt f394id;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public BlocksGetBlockHeader() {
        }

        public BlocksGetBlockHeader(TonBlockIdExt id) {
            this.f394id = id;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksGetMasterchainBlockSignatures extends Function {
        public static final int CONSTRUCTOR = 1616913876;
        public int seqno;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public BlocksGetMasterchainBlockSignatures() {
        }

        public BlocksGetMasterchainBlockSignatures(int seqno) {
            this.seqno = seqno;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksGetShardBlockProof extends Function {
        public static final int CONSTRUCTOR = 435003111;
        public TonBlockIdExt from;

        /* renamed from: id */
        public TonBlockIdExt f395id;
        public int mode;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public BlocksGetShardBlockProof() {
        }

        public BlocksGetShardBlockProof(TonBlockIdExt id, int mode, TonBlockIdExt from) {
            this.f395id = id;
            this.mode = mode;
            this.from = from;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksGetShards extends Function {
        public static final int CONSTRUCTOR = 2072773677;

        /* renamed from: id */
        public TonBlockIdExt f396id;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public BlocksGetShards() {
        }

        public BlocksGetShards(TonBlockIdExt id) {
            this.f396id = id;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksGetTransactions extends Function {
        public static final int CONSTRUCTOR = -896152271;
        public BlocksAccountTransactionId after;
        public int count;

        /* renamed from: id */
        public TonBlockIdExt f397id;
        public int mode;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public BlocksGetTransactions() {
        }

        public BlocksGetTransactions(TonBlockIdExt id, int mode, int count, BlocksAccountTransactionId after) {
            this.f397id = id;
            this.mode = mode;
            this.count = count;
            this.after = after;
        }
    }

    /* loaded from: classes3.dex */
    public static class BlocksLookupBlock extends Function {
        public static final int CONSTRUCTOR = 1418484659;

        /* renamed from: id */
        public TonBlockId f399id;

        /* renamed from: lt */
        public long f400lt;
        public int mode;
        public int utime;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public BlocksLookupBlock() {
        }

        public BlocksLookupBlock(int mode, TonBlockId id, long lt, int utime) {
            this.mode = mode;
            this.f399id = id;
            this.f400lt = lt;
            this.utime = utime;
        }
    }

    /* loaded from: classes3.dex */
    public static class ChangeLocalPassword extends Function {
        public static final int CONSTRUCTOR = -401590337;
        public InputKey inputKey;
        public byte[] newLocalPassword;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ChangeLocalPassword() {
        }

        public ChangeLocalPassword(InputKey inputKey, byte[] newLocalPassword) {
            this.inputKey = inputKey;
            this.newLocalPassword = newLocalPassword;
        }
    }

    /* loaded from: classes3.dex */
    public static class CreateNewKey extends Function {
        public static final int CONSTRUCTOR = -1861385712;
        public byte[] localPassword;
        public byte[] mnemonicPassword;
        public byte[] randomExtraSeed;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public CreateNewKey() {
        }

        public CreateNewKey(byte[] localPassword, byte[] mnemonicPassword, byte[] randomExtraSeed) {
            this.localPassword = localPassword;
            this.mnemonicPassword = mnemonicPassword;
            this.randomExtraSeed = randomExtraSeed;
        }
    }

    /* loaded from: classes3.dex */
    public static class CreateQuery extends Function {
        public static final int CONSTRUCTOR = -242540347;
        public Action action;
        public AccountAddress address;
        public InitialAccountState initialAccountState;
        public InputKey privateKey;
        public int timeout;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public CreateQuery() {
        }

        public CreateQuery(InputKey privateKey, AccountAddress address, int timeout, Action action, InitialAccountState initialAccountState) {
            this.privateKey = privateKey;
            this.address = address;
            this.timeout = timeout;
            this.action = action;
            this.initialAccountState = initialAccountState;
        }
    }

    /* loaded from: classes3.dex */
    public static class Decrypt extends Function {
        public static final int CONSTRUCTOR = 357991854;
        public byte[] encryptedData;
        public byte[] secret;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public Decrypt() {
        }

        public Decrypt(byte[] encryptedData, byte[] secret) {
            this.encryptedData = encryptedData;
            this.secret = secret;
        }
    }

    /* loaded from: classes3.dex */
    public static class DeleteKey extends Function {
        public static final int CONSTRUCTOR = -1579595571;
        public Key key;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public DeleteKey() {
        }

        public DeleteKey(Key key) {
            this.key = key;
        }
    }

    /* loaded from: classes3.dex */
    public static class DnsResolve extends Function {
        public static final int CONSTRUCTOR = 1791399222;
        public AccountAddress accountAddress;
        public byte[] category;
        public String name;
        public int ttl;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public DnsResolve() {
        }

        public DnsResolve(AccountAddress accountAddress, String name, byte[] category, int ttl) {
            this.accountAddress = accountAddress;
            this.name = name;
            this.category = category;
            this.ttl = ttl;
        }
    }

    /* loaded from: classes3.dex */
    public static class Encrypt extends Function {
        public static final int CONSTRUCTOR = -1821422820;
        public byte[] decryptedData;
        public byte[] secret;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public Encrypt() {
        }

        public Encrypt(byte[] decryptedData, byte[] secret) {
            this.decryptedData = decryptedData;
            this.secret = secret;
        }
    }

    /* loaded from: classes3.dex */
    public static class ExportEncryptedKey extends Function {
        public static final int CONSTRUCTOR = 218237311;
        public InputKey inputKey;
        public byte[] keyPassword;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ExportEncryptedKey() {
        }

        public ExportEncryptedKey(InputKey inputKey, byte[] keyPassword) {
            this.inputKey = inputKey;
            this.keyPassword = keyPassword;
        }
    }

    /* loaded from: classes3.dex */
    public static class ExportKey extends Function {
        public static final int CONSTRUCTOR = -1622353549;
        public InputKey inputKey;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ExportKey() {
        }

        public ExportKey(InputKey inputKey) {
            this.inputKey = inputKey;
        }
    }

    /* loaded from: classes3.dex */
    public static class ExportPemKey extends Function {
        public static final int CONSTRUCTOR = -643259462;
        public InputKey inputKey;
        public byte[] keyPassword;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ExportPemKey() {
        }

        public ExportPemKey(InputKey inputKey, byte[] keyPassword) {
            this.inputKey = inputKey;
            this.keyPassword = keyPassword;
        }
    }

    /* loaded from: classes3.dex */
    public static class ExportUnencryptedKey extends Function {
        public static final int CONSTRUCTOR = -634665152;
        public InputKey inputKey;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ExportUnencryptedKey() {
        }

        public ExportUnencryptedKey(InputKey inputKey) {
            this.inputKey = inputKey;
        }
    }

    /* loaded from: classes3.dex */
    public static class GetAccountAddress extends Function {
        public static final int CONSTRUCTOR = 512468424;
        public InitialAccountState initialAccountState;
        public int revision;
        public int workchainId;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public GetAccountAddress() {
        }

        public GetAccountAddress(InitialAccountState initialAccountState, int revision, int workchainId) {
            this.initialAccountState = initialAccountState;
            this.revision = revision;
            this.workchainId = workchainId;
        }
    }

    /* loaded from: classes3.dex */
    public static class GetAccountState extends Function {
        public static final int CONSTRUCTOR = -2116357050;
        public AccountAddress accountAddress;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public GetAccountState() {
        }

        public GetAccountState(AccountAddress accountAddress) {
            this.accountAddress = accountAddress;
        }
    }

    /* loaded from: classes3.dex */
    public static class GetBip39Hints extends Function {
        public static final int CONSTRUCTOR = -1889640982;
        public String prefix;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public GetBip39Hints() {
        }

        public GetBip39Hints(String prefix) {
            this.prefix = prefix;
        }
    }

    /* loaded from: classes3.dex */
    public static class GetConfigParam extends Function {
        public static final int CONSTRUCTOR = 35124362;

        /* renamed from: id */
        public TonBlockIdExt f404id;
        public int mode;
        public int param;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public GetConfigParam() {
        }

        public GetConfigParam(int mode, TonBlockIdExt id, int param) {
            this.mode = mode;
            this.f404id = id;
            this.param = param;
        }
    }

    /* loaded from: classes3.dex */
    public static class GetLogTagVerbosityLevel extends Function {
        public static final int CONSTRUCTOR = 951004547;
        public String tag;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public GetLogTagVerbosityLevel() {
        }

        public GetLogTagVerbosityLevel(String tag) {
            this.tag = tag;
        }
    }

    /* loaded from: classes3.dex */
    public static class GuessAccount extends Function {
        public static final int CONSTRUCTOR = -1737659296;
        public String publicKey;
        public String rwalletInitPublicKey;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public GuessAccount() {
        }

        public GuessAccount(String publicKey, String rwalletInitPublicKey) {
            this.publicKey = publicKey;
            this.rwalletInitPublicKey = rwalletInitPublicKey;
        }
    }

    /* loaded from: classes3.dex */
    public static class GuessAccountRevision extends Function {
        public static final int CONSTRUCTOR = 1857589922;
        public InitialAccountState initialAccountState;
        public int workchainId;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public GuessAccountRevision() {
        }

        public GuessAccountRevision(InitialAccountState initialAccountState, int workchainId) {
            this.initialAccountState = initialAccountState;
            this.workchainId = workchainId;
        }
    }

    /* loaded from: classes3.dex */
    public static class ImportEncryptedKey extends Function {
        public static final int CONSTRUCTOR = 656724958;
        public ExportedEncryptedKey exportedEncryptedKey;
        public byte[] keyPassword;
        public byte[] localPassword;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ImportEncryptedKey() {
        }

        public ImportEncryptedKey(byte[] localPassword, byte[] keyPassword, ExportedEncryptedKey exportedEncryptedKey) {
            this.localPassword = localPassword;
            this.keyPassword = keyPassword;
            this.exportedEncryptedKey = exportedEncryptedKey;
        }
    }

    /* loaded from: classes3.dex */
    public static class ImportKey extends Function {
        public static final int CONSTRUCTOR = -1607900903;
        public ExportedKey exportedKey;
        public byte[] localPassword;
        public byte[] mnemonicPassword;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ImportKey() {
        }

        public ImportKey(byte[] localPassword, byte[] mnemonicPassword, ExportedKey exportedKey) {
            this.localPassword = localPassword;
            this.mnemonicPassword = mnemonicPassword;
            this.exportedKey = exportedKey;
        }
    }

    /* loaded from: classes3.dex */
    public static class ImportPemKey extends Function {
        public static final int CONSTRUCTOR = 76385617;
        public ExportedPemKey exportedKey;
        public byte[] keyPassword;
        public byte[] localPassword;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ImportPemKey() {
        }

        public ImportPemKey(byte[] localPassword, byte[] keyPassword, ExportedPemKey exportedKey) {
            this.localPassword = localPassword;
            this.keyPassword = keyPassword;
            this.exportedKey = exportedKey;
        }
    }

    /* loaded from: classes3.dex */
    public static class ImportUnencryptedKey extends Function {
        public static final int CONSTRUCTOR = -1184671467;
        public ExportedUnencryptedKey exportedUnencryptedKey;
        public byte[] localPassword;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public ImportUnencryptedKey() {
        }

        public ImportUnencryptedKey(byte[] localPassword, ExportedUnencryptedKey exportedUnencryptedKey) {
            this.localPassword = localPassword;
            this.exportedUnencryptedKey = exportedUnencryptedKey;
        }
    }

    /* loaded from: classes3.dex */
    public static class Init extends Function {
        public static final int CONSTRUCTOR = -1000594762;
        public Options options;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public Init() {
        }

        public Init(Options options) {
            this.options = options;
        }
    }

    /* loaded from: classes3.dex */
    public static class Kdf extends Function {
        public static final int CONSTRUCTOR = -1667861635;
        public int iterations;
        public byte[] password;
        public byte[] salt;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public Kdf() {
        }

        public Kdf(byte[] password, byte[] salt, int iterations) {
            this.password = password;
            this.salt = salt;
            this.iterations = iterations;
        }
    }

    /* loaded from: classes3.dex */
    public static class MsgDecrypt extends Function {
        public static final int CONSTRUCTOR = 223596297;
        public MsgDataEncryptedArray data;
        public InputKey inputKey;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public MsgDecrypt() {
        }

        public MsgDecrypt(InputKey inputKey, MsgDataEncryptedArray data) {
            this.inputKey = inputKey;
            this.data = data;
        }
    }

    /* loaded from: classes3.dex */
    public static class MsgDecryptWithProof extends Function {
        public static final int CONSTRUCTOR = -2111649663;
        public MsgDataEncrypted data;
        public byte[] proof;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public MsgDecryptWithProof() {
        }

        public MsgDecryptWithProof(byte[] proof, MsgDataEncrypted data) {
            this.proof = proof;
            this.data = data;
        }
    }

    /* loaded from: classes3.dex */
    public static class OnLiteServerQueryError extends Function {
        public static final int CONSTRUCTOR = -677427533;
        public Error error;

        /* renamed from: id */
        public long f406id;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public OnLiteServerQueryError() {
        }

        public OnLiteServerQueryError(long id, Error error) {
            this.f406id = id;
            this.error = error;
        }
    }

    /* loaded from: classes3.dex */
    public static class OnLiteServerQueryResult extends Function {
        public static final int CONSTRUCTOR = 2056444510;
        public byte[] bytes;

        /* renamed from: id */
        public long f407id;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public OnLiteServerQueryResult() {
        }

        public OnLiteServerQueryResult(long id, byte[] bytes) {
            this.f407id = id;
            this.bytes = bytes;
        }
    }

    /* loaded from: classes3.dex */
    public static class OptionsSetConfig extends Function {
        public static final int CONSTRUCTOR = 1870064579;
        public Config config;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public OptionsSetConfig() {
        }

        public OptionsSetConfig(Config config) {
            this.config = config;
        }
    }

    /* loaded from: classes3.dex */
    public static class OptionsValidateConfig extends Function {
        public static final int CONSTRUCTOR = -346965447;
        public Config config;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public OptionsValidateConfig() {
        }

        public OptionsValidateConfig(Config config) {
            this.config = config;
        }
    }

    /* loaded from: classes3.dex */
    public static class PackAccountAddress extends Function {
        public static final int CONSTRUCTOR = -1388561940;
        public UnpackedAccountAddress accountAddress;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public PackAccountAddress() {
        }

        public PackAccountAddress(UnpackedAccountAddress accountAddress) {
            this.accountAddress = accountAddress;
        }
    }

    /* loaded from: classes3.dex */
    public static class PchanPackPromise extends Function {
        public static final int CONSTRUCTOR = -851703103;
        public PchanPromise promise;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public PchanPackPromise() {
        }

        public PchanPackPromise(PchanPromise promise) {
            this.promise = promise;
        }
    }

    /* loaded from: classes3.dex */
    public static class PchanSignPromise extends Function {
        public static final int CONSTRUCTOR = 1814322974;
        public InputKey inputKey;
        public PchanPromise promise;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public PchanSignPromise() {
        }

        public PchanSignPromise(InputKey inputKey, PchanPromise promise) {
            this.inputKey = inputKey;
            this.promise = promise;
        }
    }

    /* loaded from: classes3.dex */
    public static class PchanUnpackPromise extends Function {
        public static final int CONSTRUCTOR = -1250106157;
        public byte[] data;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public PchanUnpackPromise() {
        }

        public PchanUnpackPromise(byte[] data) {
            this.data = data;
        }
    }

    /* loaded from: classes3.dex */
    public static class PchanValidatePromise extends Function {
        public static final int CONSTRUCTOR = 258262242;
        public PchanPromise promise;
        public byte[] publicKey;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public PchanValidatePromise() {
        }

        public PchanValidatePromise(byte[] publicKey, PchanPromise promise) {
            this.publicKey = publicKey;
            this.promise = promise;
        }
    }

    /* loaded from: classes3.dex */
    public static class QueryEstimateFees extends Function {
        public static final int CONSTRUCTOR = -957002175;

        /* renamed from: id */
        public long f414id;
        public boolean ignoreChksig;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public QueryEstimateFees() {
        }

        public QueryEstimateFees(long id, boolean ignoreChksig) {
            this.f414id = id;
            this.ignoreChksig = ignoreChksig;
        }
    }

    /* loaded from: classes3.dex */
    public static class QueryForget extends Function {
        public static final int CONSTRUCTOR = -1211985313;

        /* renamed from: id */
        public long f415id;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public QueryForget() {
        }

        public QueryForget(long id) {
            this.f415id = id;
        }
    }

    /* loaded from: classes3.dex */
    public static class QueryGetInfo extends Function {
        public static final int CONSTRUCTOR = -799333669;

        /* renamed from: id */
        public long f416id;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public QueryGetInfo() {
        }

        public QueryGetInfo(long id) {
            this.f416id = id;
        }
    }

    /* loaded from: classes3.dex */
    public static class QuerySend extends Function {
        public static final int CONSTRUCTOR = 925242739;

        /* renamed from: id */
        public long f418id;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public QuerySend() {
        }

        public QuerySend(long id) {
            this.f418id = id;
        }
    }

    /* loaded from: classes3.dex */
    public static class RawCreateAndSendMessage extends Function {
        public static final int CONSTRUCTOR = -772224603;
        public byte[] data;
        public AccountAddress destination;
        public byte[] initialAccountState;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RawCreateAndSendMessage() {
        }

        public RawCreateAndSendMessage(AccountAddress destination, byte[] initialAccountState, byte[] data) {
            this.destination = destination;
            this.initialAccountState = initialAccountState;
            this.data = data;
        }
    }

    /* loaded from: classes3.dex */
    public static class RawCreateQuery extends Function {
        public static final int CONSTRUCTOR = -1928557909;
        public byte[] body;
        public AccountAddress destination;
        public byte[] initCode;
        public byte[] initData;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RawCreateQuery() {
        }

        public RawCreateQuery(AccountAddress destination, byte[] initCode, byte[] initData, byte[] body) {
            this.destination = destination;
            this.initCode = initCode;
            this.initData = initData;
            this.body = body;
        }
    }

    /* loaded from: classes3.dex */
    public static class RawGetAccountState extends Function {
        public static final int CONSTRUCTOR = -1327847118;
        public AccountAddress accountAddress;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RawGetAccountState() {
        }

        public RawGetAccountState(AccountAddress accountAddress) {
            this.accountAddress = accountAddress;
        }
    }

    /* loaded from: classes3.dex */
    public static class RawGetTransactions extends Function {
        public static final int CONSTRUCTOR = 1029612317;
        public AccountAddress accountAddress;
        public InternalTransactionId fromTransactionId;
        public InputKey privateKey;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RawGetTransactions() {
        }

        public RawGetTransactions(InputKey privateKey, AccountAddress accountAddress, InternalTransactionId fromTransactionId) {
            this.privateKey = privateKey;
            this.accountAddress = accountAddress;
            this.fromTransactionId = fromTransactionId;
        }
    }

    /* loaded from: classes3.dex */
    public static class RawGetTransactionsV2 extends Function {
        public static final int CONSTRUCTOR = -566264666;
        public AccountAddress accountAddress;
        public int count;
        public InternalTransactionId fromTransactionId;
        public InputKey privateKey;
        public boolean tryDecodeMessages;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RawGetTransactionsV2() {
        }

        public RawGetTransactionsV2(InputKey privateKey, AccountAddress accountAddress, InternalTransactionId fromTransactionId, int count, boolean tryDecodeMessages) {
            this.privateKey = privateKey;
            this.accountAddress = accountAddress;
            this.fromTransactionId = fromTransactionId;
            this.count = count;
            this.tryDecodeMessages = tryDecodeMessages;
        }
    }

    /* loaded from: classes3.dex */
    public static class RawSendMessage extends Function {
        public static final int CONSTRUCTOR = -1789427488;
        public byte[] body;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RawSendMessage() {
        }

        public RawSendMessage(byte[] body) {
            this.body = body;
        }
    }

    /* loaded from: classes3.dex */
    public static class RawSendMessageReturnHash extends Function {
        public static final int CONSTRUCTOR = -1228445927;
        public byte[] body;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RawSendMessageReturnHash() {
        }

        public RawSendMessageReturnHash(byte[] body) {
            this.body = body;
        }
    }

    /* loaded from: classes3.dex */
    public static class RunTests extends Function {
        public static final int CONSTRUCTOR = -2039925427;
        public String dir;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public RunTests() {
        }

        public RunTests(String dir) {
            this.dir = dir;
        }
    }

    /* loaded from: classes3.dex */
    public static class SetLogStream extends Function {
        public static final int CONSTRUCTOR = -1364199535;
        public LogStream logStream;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public SetLogStream() {
        }

        public SetLogStream(LogStream logStream) {
            this.logStream = logStream;
        }
    }

    /* loaded from: classes3.dex */
    public static class SetLogTagVerbosityLevel extends Function {
        public static final int CONSTRUCTOR = -2095589738;
        public int newVerbosityLevel;
        public String tag;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public SetLogTagVerbosityLevel() {
        }

        public SetLogTagVerbosityLevel(String tag, int newVerbosityLevel) {
            this.tag = tag;
            this.newVerbosityLevel = newVerbosityLevel;
        }
    }

    /* loaded from: classes3.dex */
    public static class SetLogVerbosityLevel extends Function {
        public static final int CONSTRUCTOR = -303429678;
        public int newVerbosityLevel;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public SetLogVerbosityLevel() {
        }

        public SetLogVerbosityLevel(int newVerbosityLevel) {
            this.newVerbosityLevel = newVerbosityLevel;
        }
    }

    /* loaded from: classes3.dex */
    public static class SmcGetCode extends Function {
        public static final int CONSTRUCTOR = -2115626088;

        /* renamed from: id */
        public long f419id;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public SmcGetCode() {
        }

        public SmcGetCode(long id) {
            this.f419id = id;
        }
    }

    /* loaded from: classes3.dex */
    public static class SmcGetData extends Function {
        public static final int CONSTRUCTOR = -427601079;

        /* renamed from: id */
        public long f420id;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public SmcGetData() {
        }

        public SmcGetData(long id) {
            this.f420id = id;
        }
    }

    /* loaded from: classes3.dex */
    public static class SmcGetLibraries extends Function {
        public static final int CONSTRUCTOR = 814345749;
        public byte[][] libraryList;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public SmcGetLibraries() {
        }

        public SmcGetLibraries(byte[][] libraryList) {
            this.libraryList = libraryList;
        }
    }

    /* loaded from: classes3.dex */
    public static class SmcGetState extends Function {
        public static final int CONSTRUCTOR = -214390293;

        /* renamed from: id */
        public long f421id;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public SmcGetState() {
        }

        public SmcGetState(long id) {
            this.f421id = id;
        }
    }

    /* loaded from: classes3.dex */
    public static class SmcLoad extends Function {
        public static final int CONSTRUCTOR = -903491521;
        public AccountAddress accountAddress;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public SmcLoad() {
        }

        public SmcLoad(AccountAddress accountAddress) {
            this.accountAddress = accountAddress;
        }
    }

    /* loaded from: classes3.dex */
    public static class SmcRunGetMethod extends Function {
        public static final int CONSTRUCTOR = -255261270;

        /* renamed from: id */
        public long f423id;
        public SmcMethodId method;
        public TvmStackEntry[] stack;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public SmcRunGetMethod() {
        }

        public SmcRunGetMethod(long id, SmcMethodId method, TvmStackEntry[] stack) {
            this.f423id = id;
            this.method = method;
            this.stack = stack;
        }
    }

    /* loaded from: classes3.dex */
    public static class UnpackAccountAddress extends Function {
        public static final int CONSTRUCTOR = -682459063;
        public String accountAddress;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public UnpackAccountAddress() {
        }

        public UnpackAccountAddress(String accountAddress) {
            this.accountAddress = accountAddress;
        }
    }

    /* loaded from: classes3.dex */
    public static class WithBlock extends Function {
        public static final int CONSTRUCTOR = -789093723;
        public Function function;

        /* renamed from: id */
        public TonBlockIdExt f425id;

        @Override // drinkless.org.ton.TonApi.Object
        public int getConstructor() {
            return CONSTRUCTOR;
        }

        public WithBlock() {
        }

        public WithBlock(TonBlockIdExt id, Function function) {
            this.f425id = id;
            this.function = function;
        }
    }
}
