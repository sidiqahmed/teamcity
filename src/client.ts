export interface ClientInterface {
  _get: (path: string, params?: any, cb?: () => void) => void
  _post: (path: string, params?: any, cb?: () => void) => void
}