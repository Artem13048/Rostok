import {WebWorkerMLCEngineHandler} from './runtime.mjs';
const handler=new WebWorkerMLCEngineHandler();
self.onmessage=(event)=>handler.onmessage(event);
