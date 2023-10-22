package com.trustwallet.walletconnect;

import android.util.Log;
import com.github.salomonbrys.kotson.GsonBuilderKt;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.reflect.TypeToken;
import com.trustwallet.walletconnect.exceptions.InvalidJsonRpcParamsException;
import com.trustwallet.walletconnect.extensions.StringKt;
import com.trustwallet.walletconnect.jsonrpc.JsonRpcError;
import com.trustwallet.walletconnect.jsonrpc.JsonRpcErrorResponse;
import com.trustwallet.walletconnect.jsonrpc.JsonRpcRequest;
import com.trustwallet.walletconnect.jsonrpc.JsonRpcResponse;
import com.trustwallet.walletconnect.models.MessageType;
import com.trustwallet.walletconnect.models.WCMethod;
import com.trustwallet.walletconnect.models.WCPeerMeta;
import com.trustwallet.walletconnect.models.WCSignTransaction;
import com.trustwallet.walletconnect.models.WCSocketMessage;
import com.trustwallet.walletconnect.models.binance.WCBinanceCancelOrder;
import com.trustwallet.walletconnect.models.binance.WCBinanceTradeOrder;
import com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrder;
import com.trustwallet.walletconnect.models.binance.WCBinanceTxConfirmParam;
import com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage;
import com.trustwallet.walletconnect.models.ethereum.WCEthereumTransaction;
import com.trustwallet.walletconnect.models.session.WCAddNetwork;
import com.trustwallet.walletconnect.models.session.WCApproveSessionResponse;
import com.trustwallet.walletconnect.models.session.WCSession;
import com.trustwallet.walletconnect.models.session.WCSessionUpdate;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okio.ByteString;
/* compiled from: WCClient.kt */
/* loaded from: classes4.dex */
public class WCClient extends WebSocketListener {
    private final String TAG;
    private String chainId;
    private final Gson gson;
    private long handshakeId;
    private final OkHttpClient httpClient;
    private final Set<WebSocketListener> listeners;
    private Function2<? super Long, ? super WCBinanceCancelOrder, Unit> onBnbCancel;
    private Function2<? super Long, ? super WCBinanceTradeOrder, Unit> onBnbTrade;
    private Function2<? super Long, ? super WCBinanceTransferOrder, Unit> onBnbTransfer;
    private Function2<? super Long, ? super WCBinanceTxConfirmParam, Unit> onBnbTxConfirm;
    private Function2<? super Long, ? super String, Unit> onCustomRequest;
    private Function2<? super Integer, ? super String, Unit> onDisconnect;
    private Function2<? super Long, ? super WCEthereumTransaction, Unit> onEthSendTransaction;
    private Function2<? super Long, ? super WCEthereumSignMessage, Unit> onEthSign;
    private Function2<? super Long, ? super WCEthereumTransaction, Unit> onEthSignTransaction;
    private Function1<? super Throwable, Unit> onFailure;
    private Function1<? super Long, Unit> onGetAccounts;
    private Function2<? super Long, ? super WCPeerMeta, Unit> onSessionRequest;
    private Function2<? super Long, ? super WCSignTransaction, Unit> onSignTransaction;
    private Function2<? super Long, ? super WCAddNetwork, Unit> onWalletAddNetwork;
    private Function2<? super Long, ? super Integer, Unit> onWalletChangeNetwork;
    private String peerId;
    private WCPeerMeta peerMeta;
    private String remotePeerId;
    private WCSession session;
    private WebSocket socket;

    /* compiled from: WCClient.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WCMethod.values().length];
            iArr[WCMethod.SESSION_REQUEST.ordinal()] = 1;
            iArr[WCMethod.SESSION_UPDATE.ordinal()] = 2;
            iArr[WCMethod.ETH_SIGN.ordinal()] = 3;
            iArr[WCMethod.ETH_PERSONAL_SIGN.ordinal()] = 4;
            iArr[WCMethod.ETH_SIGN_TYPE_DATA.ordinal()] = 5;
            iArr[WCMethod.ETH_SIGN_TYPE_DATA_V4.ordinal()] = 6;
            iArr[WCMethod.ETH_SIGN_TRANSACTION.ordinal()] = 7;
            iArr[WCMethod.ETH_SEND_TRANSACTION.ordinal()] = 8;
            iArr[WCMethod.BNB_SIGN.ordinal()] = 9;
            iArr[WCMethod.BNB_TRANSACTION_CONFIRM.ordinal()] = 10;
            iArr[WCMethod.GET_ACCOUNTS.ordinal()] = 11;
            iArr[WCMethod.SIGN_TRANSACTION.ordinal()] = 12;
            iArr[WCMethod.WALLET_SWITCH_NETWORK.ordinal()] = 13;
            iArr[WCMethod.WALLET_ADD_NETWORK.ordinal()] = 14;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WCClient(com.google.gson.GsonBuilder r8, okhttp3.OkHttpClient r9) {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.trustwallet.walletconnect.WCClient.<init>(com.google.gson.GsonBuilder, okhttp3.OkHttpClient):void");
    }

    public final WCSession getSession() {
        return this.session;
    }

    public final String getPeerId() {
        return this.peerId;
    }

    public final String getRemotePeerId() {
        return this.remotePeerId;
    }

    public final void setOnFailure(Function1<? super Throwable, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onFailure = function1;
    }

    public final void setOnDisconnect(Function2<? super Integer, ? super String, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.onDisconnect = function2;
    }

    public final void setOnSessionRequest(Function2<? super Long, ? super WCPeerMeta, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.onSessionRequest = function2;
    }

    public final void setOnEthSign(Function2<? super Long, ? super WCEthereumSignMessage, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.onEthSign = function2;
    }

    public final void setOnEthSignTransaction(Function2<? super Long, ? super WCEthereumTransaction, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.onEthSignTransaction = function2;
    }

    public final void setOnEthSendTransaction(Function2<? super Long, ? super WCEthereumTransaction, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.onEthSendTransaction = function2;
    }

    public final void setOnWalletChangeNetwork(Function2<? super Long, ? super Integer, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.onWalletChangeNetwork = function2;
    }

    @Override // okhttp3.WebSocketListener
    public void onOpen(WebSocket webSocket, Response response) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(response, "response");
        Log.d(this.TAG, "<< websocket opened >>");
        for (WebSocketListener webSocketListener : this.listeners) {
            webSocketListener.onOpen(webSocket, response);
        }
        WCSession wCSession = this.session;
        if (wCSession == null) {
            throw new IllegalStateException("session can't be null on connection open");
        }
        String str = this.peerId;
        if (str == null) {
            throw new IllegalStateException("peerId can't be null on connection open");
        }
        subscribe(wCSession.getTopic());
        subscribe(str);
    }

    @Override // okhttp3.WebSocketListener
    public void onMessage(WebSocket webSocket, String text) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(text, "text");
        String str = null;
        try {
            try {
                String str2 = this.TAG;
                Log.d(str2, "<== message " + text);
                str = decryptMessage(text);
                String str3 = this.TAG;
                Log.d(str3, "<== decrypted " + str);
                handleMessage(str);
                for (WebSocketListener webSocketListener : this.listeners) {
                    webSocketListener.onMessage(webSocket, str == null ? text : str);
                }
            } catch (Exception e) {
                this.onFailure.invoke(e);
                for (WebSocketListener webSocketListener2 : this.listeners) {
                    webSocketListener2.onMessage(webSocket, str == null ? text : str);
                }
            }
        } catch (Throwable th) {
            for (WebSocketListener webSocketListener3 : this.listeners) {
                webSocketListener3.onMessage(webSocket, str == null ? text : str);
            }
            throw th;
        }
    }

    @Override // okhttp3.WebSocketListener
    public void onFailure(WebSocket webSocket, Throwable t, Response response) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(t, "t");
        resetState();
        this.onFailure.invoke(t);
        for (WebSocketListener webSocketListener : this.listeners) {
            webSocketListener.onFailure(webSocket, t, response);
        }
    }

    @Override // okhttp3.WebSocketListener
    public void onClosed(WebSocket webSocket, int i, String reason) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Log.d(this.TAG, "<< websocket closed >>");
        for (WebSocketListener webSocketListener : this.listeners) {
            webSocketListener.onClosed(webSocket, i, reason);
        }
    }

    @Override // okhttp3.WebSocketListener
    public void onMessage(WebSocket webSocket, ByteString bytes) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        Log.d(this.TAG, "<== pong");
        for (WebSocketListener webSocketListener : this.listeners) {
            webSocketListener.onMessage(webSocket, bytes);
        }
    }

    @Override // okhttp3.WebSocketListener
    public void onClosing(WebSocket webSocket, int i, String reason) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Log.d(this.TAG, "<< closing socket >>");
        resetState();
        this.onDisconnect.invoke(Integer.valueOf(i), reason);
        for (WebSocketListener webSocketListener : this.listeners) {
            webSocketListener.onClosing(webSocket, i, reason);
        }
    }

    public static /* synthetic */ void connect$default(WCClient wCClient, WCSession wCSession, WCPeerMeta wCPeerMeta, String str, String str2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: connect");
        }
        if ((i & 4) != 0) {
            str = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(str, "randomUUID().toString()");
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        wCClient.connect(wCSession, wCPeerMeta, str, str2);
    }

    public final void connect(WCSession session, WCPeerMeta peerMeta, String peerId, String str) {
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(peerMeta, "peerMeta");
        Intrinsics.checkNotNullParameter(peerId, "peerId");
        WCSession wCSession = this.session;
        if (wCSession != null) {
            if (!Intrinsics.areEqual(wCSession != null ? wCSession.getTopic() : null, session.getTopic())) {
                killSession();
            }
        }
        this.session = session;
        this.peerMeta = peerMeta;
        this.peerId = peerId;
        this.remotePeerId = str;
        this.socket = this.httpClient.newWebSocket(new Request.Builder().url(session.getBridge()).build(), this);
    }

    public final boolean approveSession(List<String> accounts, int i) {
        Intrinsics.checkNotNullParameter(accounts, "accounts");
        if (!(this.handshakeId > 0)) {
            throw new IllegalStateException("handshakeId must be greater than 0 on session approve".toString());
        }
        this.chainId = String.valueOf(i);
        String json = this.gson.toJson(new JsonRpcResponse(null, this.handshakeId, new WCApproveSessionResponse(false, i, accounts, this.peerId, this.peerMeta, 1, null), 1, null));
        Intrinsics.checkNotNullExpressionValue(json, "gson.toJson(response)");
        return encryptAndSend(json);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean updateSession$default(WCClient wCClient, List list, Integer num, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                list = null;
            }
            if ((i & 2) != 0) {
                num = null;
            }
            if ((i & 4) != 0) {
                z = true;
            }
            return wCClient.updateSession(list, num, z);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateSession");
    }

    public final boolean updateSession(List<String> list, Integer num, boolean z) {
        long generateId;
        Integer num2;
        List listOf;
        generateId = WCClientKt.generateId();
        WCMethod wCMethod = WCMethod.SESSION_UPDATE;
        if (num == null) {
            String str = this.chainId;
            num2 = str != null ? StringsKt__StringNumberConversionsKt.toIntOrNull(str) : null;
        } else {
            num2 = num;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new WCSessionUpdate(z, num2, list));
        JsonRpcRequest jsonRpcRequest = new JsonRpcRequest(generateId, null, wCMethod, listOf, 2, null);
        this.chainId = String.valueOf(num);
        String json = this.gson.toJson(jsonRpcRequest);
        Intrinsics.checkNotNullExpressionValue(json, "gson.toJson(request)");
        return encryptAndSend(json);
    }

    public static /* synthetic */ boolean rejectSession$default(WCClient wCClient, String str, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                str = "Session rejected";
            }
            return wCClient.rejectSession(str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rejectSession");
    }

    public final boolean rejectSession(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        long j = this.handshakeId;
        if (!(j > 0)) {
            throw new IllegalStateException("handshakeId must be greater than 0 on session reject".toString());
        }
        String json = this.gson.toJson(new JsonRpcErrorResponse(null, j, JsonRpcError.Companion.serverError(message), 1, null));
        Intrinsics.checkNotNullExpressionValue(json, "gson.toJson(response)");
        return encryptAndSend(json);
    }

    public final boolean killSession() {
        updateSession$default(this, null, null, false, 3, null);
        return disconnect();
    }

    public final <T> boolean approveRequest(long j, T t) {
        String json = this.gson.toJson(new JsonRpcResponse(null, j, t, 1, null));
        Intrinsics.checkNotNullExpressionValue(json, "gson.toJson(response)");
        return encryptAndSend(json);
    }

    public static /* synthetic */ boolean rejectRequest$default(WCClient wCClient, long j, String str, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                str = "Reject by the user";
            }
            return wCClient.rejectRequest(j, str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rejectRequest");
    }

    public final boolean rejectRequest(long j, String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        String json = this.gson.toJson(new JsonRpcErrorResponse(null, j, JsonRpcError.Companion.serverError(message), 1, null));
        Intrinsics.checkNotNullExpressionValue(json, "gson.toJson(response)");
        return encryptAndSend(json);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String decryptMessage(java.lang.String r8) {
        /*
            r7 = this;
            com.google.gson.Gson r0 = r7.gson
            java.lang.String r1 = "gson"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            com.trustwallet.walletconnect.WCClient$decryptMessage$$inlined$fromJson$1 r2 = new com.trustwallet.walletconnect.WCClient$decryptMessage$$inlined$fromJson$1
            r2.<init>()
            java.lang.reflect.Type r2 = r2.getType()
            java.lang.String r3 = "object : TypeToken<T>() {} .type"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3)
            boolean r4 = r2 instanceof java.lang.reflect.ParameterizedType
            java.lang.String r5 = "type.rawType"
            if (r4 == 0) goto L2e
            r4 = r2
            java.lang.reflect.ParameterizedType r4 = (java.lang.reflect.ParameterizedType) r4
            boolean r6 = com.github.salomonbrys.kotson.GsonBuilderKt.isWildcard(r4)
            if (r6 == 0) goto L2e
            java.lang.reflect.Type r2 = r4.getRawType()
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r5)
            goto L32
        L2e:
            java.lang.reflect.Type r2 = com.github.salomonbrys.kotson.GsonBuilderKt.removeTypeWildcards(r2)
        L32:
            java.lang.Object r8 = r0.fromJson(r8, r2)
            java.lang.String r0 = "fromJson(json, typeToken<T>())"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r8, r0)
            com.trustwallet.walletconnect.models.WCSocketMessage r8 = (com.trustwallet.walletconnect.models.WCSocketMessage) r8
            com.google.gson.Gson r2 = r7.gson
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r1)
            java.lang.String r8 = r8.getPayload()
            com.trustwallet.walletconnect.WCClient$decryptMessage$$inlined$fromJson$2 r1 = new com.trustwallet.walletconnect.WCClient$decryptMessage$$inlined$fromJson$2
            r1.<init>()
            java.lang.reflect.Type r1 = r1.getType()
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r3)
            boolean r3 = r1 instanceof java.lang.reflect.ParameterizedType
            if (r3 == 0) goto L67
            r3 = r1
            java.lang.reflect.ParameterizedType r3 = (java.lang.reflect.ParameterizedType) r3
            boolean r4 = com.github.salomonbrys.kotson.GsonBuilderKt.isWildcard(r3)
            if (r4 == 0) goto L67
            java.lang.reflect.Type r1 = r3.getRawType()
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r5)
            goto L6b
        L67:
            java.lang.reflect.Type r1 = com.github.salomonbrys.kotson.GsonBuilderKt.removeTypeWildcards(r1)
        L6b:
            java.lang.Object r8 = r2.fromJson(r8, r1)
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r8, r0)
            com.trustwallet.walletconnect.models.WCEncryptionPayload r8 = (com.trustwallet.walletconnect.models.WCEncryptionPayload) r8
            com.trustwallet.walletconnect.models.session.WCSession r0 = r7.session
            if (r0 == 0) goto L8e
            java.lang.String r1 = new java.lang.String
            com.trustwallet.walletconnect.WCCipher r2 = com.trustwallet.walletconnect.WCCipher.INSTANCE
            java.lang.String r0 = r0.getKey()
            byte[] r0 = com.trustwallet.walletconnect.extensions.StringKt.hexStringToByteArray(r0)
            byte[] r8 = r2.decrypt(r8, r0)
            java.nio.charset.Charset r0 = kotlin.text.Charsets.UTF_8
            r1.<init>(r8, r0)
            return r1
        L8e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "session can't be null on message receive"
            r8.<init>(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.trustwallet.walletconnect.WCClient.decryptMessage(java.lang.String):java.lang.String");
    }

    private final boolean invalidParams(long j) {
        String json = this.gson.toJson(new JsonRpcErrorResponse(null, j, JsonRpcError.Companion.invalidParams("Invalid parameters"), 1, null));
        Intrinsics.checkNotNullExpressionValue(json, "gson.toJson(response)");
        return encryptAndSend(json);
    }

    private final void handleMessage(String str) {
        Type removeTypeWildcards;
        try {
            Gson gson = this.gson;
            Type type = new TypeToken<JsonRpcRequest<JsonArray>>() { // from class: com.trustwallet.walletconnect.WCClient$handleMessage$$inlined$typeToken$1
            }.getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "object : TypeToken<T>() {} .type");
            if ((type instanceof ParameterizedType) && GsonBuilderKt.isWildcard((ParameterizedType) type)) {
                removeTypeWildcards = ((ParameterizedType) type).getRawType();
                Intrinsics.checkExpressionValueIsNotNull(removeTypeWildcards, "type.rawType");
            } else {
                removeTypeWildcards = GsonBuilderKt.removeTypeWildcards(type);
            }
            JsonRpcRequest<JsonArray> request = (JsonRpcRequest) gson.fromJson(str, removeTypeWildcards);
            if (request.getMethod() != null) {
                Intrinsics.checkNotNullExpressionValue(request, "request");
                handleRequest(request);
                return;
            }
            this.onCustomRequest.invoke(Long.valueOf(request.getId()), str);
        } catch (InvalidJsonRpcParamsException e) {
            invalidParams(e.getRequestId());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0413  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0429  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0472  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x04d3  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x04de  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0529  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x054d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0311  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void handleRequest(com.trustwallet.walletconnect.jsonrpc.JsonRpcRequest<com.google.gson.JsonArray> r9) {
        /*
            Method dump skipped, instructions count: 1412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.trustwallet.walletconnect.WCClient.handleRequest(com.trustwallet.walletconnect.jsonrpc.JsonRpcRequest):void");
    }

    private final boolean subscribe(String str) {
        WCSocketMessage wCSocketMessage = new WCSocketMessage(str, MessageType.SUB, "");
        String json = this.gson.toJson(wCSocketMessage);
        String str2 = this.TAG;
        Log.d(str2, "==> subscribe " + json);
        WebSocket webSocket = this.socket;
        if (webSocket != null) {
            String json2 = this.gson.toJson(wCSocketMessage);
            Intrinsics.checkNotNullExpressionValue(json2, "gson.toJson(message)");
            return webSocket.send(json2);
        }
        return false;
    }

    private final boolean encryptAndSend(String str) {
        String str2 = this.TAG;
        Log.d(str2, "==> message " + str);
        WCSession wCSession = this.session;
        if (wCSession == null) {
            throw new IllegalStateException("session can't be null on message send");
        }
        Gson gson = this.gson;
        WCCipher wCCipher = WCCipher.INSTANCE;
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        String payload = gson.toJson(wCCipher.encrypt(bytes, StringKt.hexStringToByteArray(wCSession.getKey())));
        String str3 = this.remotePeerId;
        if (str3 == null) {
            str3 = wCSession.getTopic();
        }
        MessageType messageType = MessageType.PUB;
        Intrinsics.checkNotNullExpressionValue(payload, "payload");
        String json = this.gson.toJson(new WCSocketMessage(str3, messageType, payload));
        String str4 = this.TAG;
        Log.d(str4, "==> encrypted " + json);
        WebSocket webSocket = this.socket;
        if (webSocket != null) {
            Intrinsics.checkNotNullExpressionValue(json, "json");
            return webSocket.send(json);
        }
        return false;
    }

    public final boolean disconnect() {
        WebSocket webSocket = this.socket;
        if (webSocket != null) {
            return webSocket.close(1000, null);
        }
        return false;
    }

    private final void resetState() {
        this.handshakeId = -1L;
        this.session = null;
        this.peerId = null;
        this.remotePeerId = null;
        this.peerMeta = null;
    }
}
